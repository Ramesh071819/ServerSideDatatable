<component>
    <cffunction  name="dataTable" access="remote" returnformat="JSON">
    
        <cfquery name="qdataTable" datasource="pubsDS">
        select *
        from [pubs].[dbo].[employee]
        </cfquery>
<!--- <cfreturn qdataTable> --->

    {
        "recordsTotal": <cfoutput>#qdataTable.recordcount#</cfoutput>,
        "recordsFiltered": <cfoutput>#qdataTable.recordcount#</cfoutput>,
        "data":
        <cfif qdataTable.recordcount gt 0>
            [
                <cfoutput query="qdataTable" startrow="#val(start+1)#" maxrows="#val(length)#">
                    <cfif currentRow gt (start+1)>,</cfif>
                    {
                        "Empid":#SerializeJSON(qdataTable.emp_id)#,
                        "FName":#SerializeJSON(qdataTable.fname)#,
                        "MName":#SerializeJSON(qdataTable.minit)#,
                        "LName":#SerializeJSON(qdataTable.lname)#,
                        "JobId":#SerializeJSON(qdataTable.job_id)#,
                        "JobLvl":#SerializeJSON(qdataTable.job_lvl)#,
                        "PubId":#SerializeJSON(qdataTable.pub_id)#,
                        "HireDate":#SerializeJSON(qdataTable.hire_date)#
                    }
                </cfoutput> 
            ]
        </cfif>
    }

    </cffunction>
</component>