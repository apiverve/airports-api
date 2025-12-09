using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AirportsLookup
{
    /// <summary>
    /// Query options for the Airports Lookup API
    /// </summary>
    public class AirportsLookupQueryOptions
    {
        /// <summary>
        /// The IATA code of the airport for which you want to get the information (e.g., MCI)
        /// Example: MCI
        /// </summary>
        [JsonProperty("iata")]
        public string Iata { get; set; }
    }
}
