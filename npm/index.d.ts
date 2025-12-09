declare module '@apiverve/airports' {
  export interface airportsOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface airportsResponse {
    status: string;
    error: string | null;
    data: AirportsLookupData;
    code?: number;
  }


  interface AirportsLookupData {
      icao:      string;
      iata:      string;
      name:      string;
      city:      string;
      state:     string;
      country:   string;
      elevation: number;
      lat:       number;
      lon:       number;
      tz:        string;
      cityInfo:  CityInfo;
  }
  
  interface CityInfo {
      name:    string;
      altName: string;
      country: string;
  }

  export default class airportsWrapper {
    constructor(options: airportsOptions);

    execute(callback: (error: any, data: airportsResponse | null) => void): Promise<airportsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airportsResponse | null) => void): Promise<airportsResponse>;
    execute(query?: Record<string, any>): Promise<airportsResponse>;
  }
}
