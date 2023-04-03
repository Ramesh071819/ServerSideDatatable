<!--- CDN --->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!--- jQuery Data Table --->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<!--- CDN --->

<cfoutput>
    <div class="container">
        <table id="example" class="display table" style="width:100%">
            <!--- DATA TABLE WILL DISPLAY THE TABLE --->
        </table>
    </div>
</cfoutput>
<script>
    $(document).ready(function () {
        $('#example').DataTable({
            processing: true,
            serverSide: true,
            ajax:{ 
                url:'COM/dataTable.cfc?method=dataTable',
                // type:'post',
            },
            aoColumns:[
                        {title: "ID",data:'Empid'},
                        {title: "FIRSTNAME",data:'FName'},
                        {title: "MIDDLENAME",data:'MName'},
                        {title: "LASTNAME",data:'LName'},
                        {title: "JOBID",data:'JobId'},
                        {title: "JOBLEVEL",data:'JobLvl'},
                        {title: "PUBID",data:'PubId'},
                        {title: "HIREDATE",data:'HireDate'}
                    ],
            aaSorting: [[1,'asc']],
        });
    })
<!---
$("##AccountstatementsGrid").DataTable({
    "processing": true,
    "serverSide": true,
    "ajax":  {
        url: "../MyDocs_v1/objects/getData.cfc",
        type: "POST",
        data: ({
            method: 'GetAccountStatements',
            PlayerID: #URL.PlayerID#,
            UserType: '#URL.UserType#',
            ClientName : ClientName,
            ShowEntireRecords : ShowEntireRecords

        }),
        "dataSrc": function ( json ) {
            return json.data;
        }       
    },
    "lengthChange": false,
    "lengthMenu": [10],
    "searching": true,
    "order": [[ 1, "desc" ]],
    "oLanguage": {
        "sEmptyTable": "No Documents Available",
        "sLengthMenu": "Show _MENU_",
    },
    drawCallback: function() {

    },

    "bDestroy": true,
    "bSort": true,
    columnDefs: [
        {
            targets: 0,
            "sortable": false,
            "searchable": true,
            render: function(data, type, row) {
                data=`${row[0]}`
                return data;
            }
        },
        {
            targets: 1,
            "searchable": false,
            render: function(data, type, row) {
                data = `${row[6]}`;
                return data;
            }
        },
        {
            targets: 2,
            "sortable": false,
            "searchable": false,
            render: function(data, type, row) {
                data = `<a href="/ViewDoc.cfm?pdfloc=${row[5]}" target="_blank">${row[2]}</a>`;
                return data;
            }
        },
        {
            targets: 3,
            "sortable": false,
            "searchable": false,
            render: function(data, type, row) {
                data = `<div class="dropdown mt-1" style ="border: none !important;"><a class="dropdown-toggle" href="##" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false"><img src="./Images/edit.svg" style="cursor: pointer;"></a><ul class="dropdown-menu" aria-labelledby="dropdownMenuLink"><li><a class="dropdown-item statementsFormlink" href="download.cfm?path=${row[5]}">Download</a></li></ul></div>`;
                return data;
            }
        },
    ]
});--->
</script>
