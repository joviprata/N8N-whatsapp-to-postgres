![N8N Whatsapp to Postgres Automation](https://github.com/user-attachments/assets/b3baa2e6-4f64-4870-beac-5428dedd0974)

# N8N Automation - Whatsapp Group Records Archiving in Postgres
This project was created to display information about the WhatsApp groups of publicity campaigns. It aimed to gather insights on which messages in the groups had better engagement, which messages caused people to leave (so that we could avoid those), the most important days for acquiring new members, and the distribution of people across each group. I automated the process of retrieving new data from WhatsApp using N8N, created Postgres relational tables and materialized views, and connected the data to a Looker Studio dashboard.

## Files description
N8N Postgres Numbers Whatsapp - Ins, Outs and Admins.json - The JSON file for the N8N Project. It uses a Z-API Webhook that gets data from WhatsApp groups and only continues the workflow if it is triggered by admin updates or group activities. If it is triggered by admin updates, it updates all records of that person in that WhatsApp group, setting the person as either an admin or not. If it is triggered by group activities, it inserts or updates that person's records in the group, providing the time they entered or left the group.
