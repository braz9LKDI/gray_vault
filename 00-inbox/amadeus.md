# Amadeus

## Glossary

- GDS: the network that connects airlines with the people who sell their flights. Amadeus is a GDS.

- PNR: the booking record: passengers, flights, contacts, fares and payments.

- Locator: the 6-character code of a PNR, for example `9U57QR`.

- Segment: one flight in the itinerary.

- Element: each numbered line in a PNR. You change or cancel lines by their number.

- `TQT` or `TST`: the stored fare. A ticket can only be issued from a `TQT`.

- `TQM` or `TSM`: the stored price of extra services: bags, seats, pets.

- `TKT`: the e-ticket. **Air Europa ticket numbers start with 996**.

- `EMD`: the document issued for a paid extra service.

- Fare family: LITE, STANDARD, FLEX, and the Premium and Business versions.

- Smart Flows: guided forms inside Amadeus for requests, discounts and contact data.

- SUMA: Air Europa's frequent flyer program.

## The booking flow

### Find

- `AN`: find flights with free seats.

### Build the booking (PNR)

1. `SS`: sell the seats the customer chose.

2. `NM1`: add each passenger's name.

3. `APH` or `APE`: add phone or email.

4. `TKOK`: add the ticking element.

5. `RF…;ER`: sign and save. The booking gets its locator.

All five steps are mandatory parts of a booking.

### Price

- `FXP`: Price the booking and store the fare (`TQT`).

### Pay, issue and send

- `FP`: add the form of payment (only if the payment system fails).

- `TTP/RT`: issue the ticket.

- `ITR-EMLA`: email the e-ticket to the customer.

## Get around the system

### Your profile and office

- `JGD`: show your agent profile: sign, security (`JGD/S`), rights  (`JGD/R`), preferences (`JGD/P`) and currencies (`JGD/C`).

- `JGU`: change a preference `JGU/<preference-code>-<new-value>`.

- `PV`: show an office profile.

    |  office ID  |               who uses it               |
    |:-----------:|:---------------------------------------:|
    | `PMIUX0100` |    Call center (CAT) and Backoffice     |
    | `PMIUX0113` | Backoffice Empresas (company accounts)  |
    | `PMIUX0114` |             Backoffice Web              |
    | `PMIUX0115` |             Air Europa SUMA             |
    | `PMIUX08AC` | Bookings made on the Air Europa website |

### Information pages

- `GGAIRUX`: Air Europa information pages, in alphabetical order.

- `GGAIRUXVNA`: Air Europa airport offices in Spain: phones and opening hours.

- `GGAPT`: information about an airport.

- `MD` / `MU`: move down / up one screen (also `F8` / `F7`).

- `MP` / `MB` / `MO`: previous info page, last page and original page.

- `HE`: online help, how each command works, with examples.

### Enconde and decode
