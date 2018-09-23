using Harman.Data.Entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Harman.Api.Services.Model
{
    public class PatientModel 
    {
        public int PatientId { get; set; }
        public string FirstName { get; set; }
        public string SurName { get; set; }
        public int Gender { get; set; }
        public DateTime? Dob { get; set; }
        public ICollection<TblTelephone> TblTelephone { get; set; }
    }
}
