declare module '@apiverve/airports' {
  export interface airportsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface airportsResponse {
    status: string;
    error: string | null;
    data: AirportsLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AirportsLookupData {
      icao:      null | string;
      iata:      null | string;
      name:      null | string;
      city:      null | string;
      state:     null | string;
      country:   null | string;
      elevation: number | null;
      lat:       number | null;
      lon:       number | null;
      tz:        null | string;
      cityInfo:  CityInfo;
  }
  
  interface CityInfo {
      name:    null | string;
      altName: null | string;
      country: null | string;
  }

  export default class airportsWrapper {
    constructor(options: airportsOptions);

    execute(callback: (error: any, data: airportsResponse | null) => void): Promise<airportsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airportsResponse | null) => void): Promise<airportsResponse>;
    execute(query?: Record<string, any>): Promise<airportsResponse>;
  }
}
