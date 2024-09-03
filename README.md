![N8N Whatsapp to Postgres Automation](https://github.com/user-attachments/assets/b3baa2e6-4f64-4870-beac-5428dedd0974)

# N8N Automation - Whatsapp Group Records Archiving in Postgres
This project was created to display information about the WhatsApp groups of publicity campaigns. It aimed to gather insights on which messages in the groups had better engagement, which messages caused people to leave (so that we could avoid those), the most important days for acquiring new members, and the distribution of people across each group. I automated the process of retrieving new data from WhatsApp using N8N, created Postgres relational tables and materialized views, and connected the data to a Looker Studio dashboard, as seen below.<br/>

![Whatsapp Dashboard Looker Studio](https://github.com/user-attachments/assets/9d485fbe-6ac5-4d8d-9425-1a7d8265515e)

This dashboard provides information on the entries and exits of WhatsApp groups, as well as the rate of people joining the groups compared to the total number of leads in the campaign. It is a part of the Launch Acquisitions dashboard, which includes a custom date range filter.


## Files description
- [N8N Postgres Numbers Whatsapp - Ins, Outs and Admins.json <br/>](https://github.com/joviprata/N8N-whatsapp-to-postgres/blob/main/N8N%20Postgres%20Numbers%20Whatsapp%20-%20Ins%2C%20Outs%20and%20Admins.json)
The JSON file for the N8N Project. It uses a Z-API Webhook that gets data from WhatsApp groups and only continues the workflow if it is triggered by admin updates or group activities. If it is triggered by admin updates, it updates all records of that person in that WhatsApp group, setting the person as either an admin or not. If it is triggered by group activities, it inserts or updates that person's records in the group, providing the time they entered or left the group.
- [whatsapp_numbers.sql](https://github.com/joviprata/N8N-whatsapp-to-postgres/blob/main/whatsapp_numbers.sql)<br/>
This table contains specific data about the phone numbers: the time it got added to a group and/or left it, and if the phone number's person is an admin or not. To determine what group a row is referring to, a foreign key was added, referencing the ID of the primary key found in the Whatsapp Groups table.
- [whatsapp_groups.sql](https://github.com/joviprata/N8N-whatsapp-to-postgres/blob/main/whatsapp_groups.sql)<br/>
This table contains information about the groups: what expert in the digital marketing does it belong to, the ad campaign's name, the number of the group (as there can be many groups with the same name), the group's ID, link, the version of the launch campaign, the group creator's phone number, and an auto-incrementing primary key ID.
- [mat_view_numbers_whatsapp.sql](https://github.com/joviprata/N8N-whatsapp-to-postgres/blob/main/mat_view_numbers_whatsapp.sql) <br/>
A Materialized View for Whatsapp Numbers data in Postgres. It consists of joining two tables, Whatsapp Groups and Whatsapp Numbers, and getting only relevant information about those two for Looker Studio dashboards, such as: the publicity campaign name and it's expert, the group name, the phone number of the person, the time the person got in or out of the group, and if that person is an admin or not.
