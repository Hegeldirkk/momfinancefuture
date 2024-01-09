const axios = require('axios');

const baseURL = 'https://sandbox.momodeveloper.mtn.com/';  
const APIUserID = '0c8a92c7-be76-4ded-8978-1fcbd926ea5f'; 
const apiKey = '092ee61a4de84ce680e16f4a680d5292';
const OcpApimSubscriptionKey = '69e964e133084f84881664bd6b769d4e';

let accessToken = null;
let tokenExpirationTime = null;

class PayController {

    async getAccessToken() {
        try {
            const concatenatedString = `${APIUserID}:${apiKey}`;
            const base64EncodedString = Buffer.from(concatenatedString).toString('base64');

            console.log('Base64 Encoded:', base64EncodedString);

            const getTokenResponse = await axios.post(
                `${baseURL}/collection/token`,
                {
                    apiUser: APIUserID,
                    apiKey: apiKey,
                },
                {
                    headers: {
                        'Content-Type': 'application/json',
                        'Cache-Control': 'no-cache',
                        'Ocp-Apim-Subscription-Key': OcpApimSubscriptionKey,
                        'Authorization': `Basic ${base64EncodedString}`,
                    },
                }
            );

            accessToken = getTokenResponse.data.access_token;
            tokenExpirationTime = Date.now() + (getTokenResponse.data.expires_in * 1000);
            console.log('Access Token obtained:', accessToken);

        } catch (error) {
            console.error('Error getting Access Token:', error.message);
        }
    }

    async performRequestToPay() {
        try {

          if ()
          await this.getAccessToken();

            if (tokenExpirationTime && tokenExpirationTime < Date.now()) {
                console.log('Token has expired..');
                await this.getAccessToken();
            }

            const requestToPayResponse = await axios.post(
                `${baseURL}/requesttopay`,
                {},
                {
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${accessToken}`,
                    },
                }
            );

            // Gérer la réponse de la demande de paiement

        } catch (error) {
            console.error('Error performing Request to Pay:', error.message);
        }
    }


}

module.exports = PayController;