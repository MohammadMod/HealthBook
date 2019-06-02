using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HealthBook
{
    public class Code_Generator
    {
        public string code;
        public string generator()
        {
            Random gene = new Random();
            String r = gene.Next(0, 999999).ToString("D6");

            return
                code = r;

        }
    }
}