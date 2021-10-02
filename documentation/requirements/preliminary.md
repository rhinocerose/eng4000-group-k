# Problem Statement

### To fill in:
*For projects with a loosely-defined expression of need, the requirements review must demonstrate that the team has mapped that expression of need into an engineering response suitable to drive the design and development of the solution. The team must demonstrate they have:*
- Created a complete, coherent set of top-level requirements that captures the needs 
- Ensured the requirements set use precise language and follow SMART guidelines 
- Differentiated wants from needs (by removing wants from the requirements, or by capturing them as goals vs. requirements) 
- Identified a specific, justified source for each requirement 
- Identified driving requirements for the design 
- Proposed a preliminary approach to verifying compliance with each requirement at the design phase and the final deliverable phase.

This project aims to create a greenhouse controller that has the capability of controlling outputs to maintain desired environmental conditions in a greenhouse. It will interface with existing greenhouse environmental control hardware by providing control signals to activate or deactivate climate control devices. 

# Controlled Parameters

## Temperature
The temperature will be monitored by a remote sensor, and the feedback from it will be used to control the temperature remains within a user-definable band by controlling a series of relays. The relays can be used to provide control signals for fans, vent control, surtains, or any other device than can be used to modify temperatures in the greenhouse. The behavior and duty cycle of the the output can be user defined so as to make it output agnostic and extensible.

# Hardware Requirements

## Existing Hardware to Interface
- roof vents
  - East:
    - position sensor
    - relay
  - West:
    - position sensor
    - relay
- side vents
  - open/close
  - relay
- corridor vents
  - open/close
  - relay
- air circulation fans
  - on/off
  - relay
- arctic coolers
  - on/off for water
  - 3 stages for fan
  - relay
- supplemental lighting
  - on/off
- shade curtains
  - 0-100% position
  - relay
- supplemental CO2
  - on/off
  - relay
- sidewall and overhead heating
  - currently on/off steam
  - relay
- irrigation starts
  - on/off
  - relay
- spray starts
  - on/off
  - relay

## Hardware to Provide
- three (3) position sensors
- humidity sensor
- temperature sensor
- CO2 Sensor
- 16 Relays per controller
- Housing for controller
- Touch-screen TFT control
- Test-points for monitoring signals
- Ports for remote sensing (RJ45 or Terminal Headers)
- Laid out as proper PCB
- Remote sense probes with selectable inputs
- Data storage for historical measurements



# Software Requirements
PC-based user interface with the following characteristics:
- adjustable set points
- dead band (is the allowable range of a setting before the computer tries to change it) 
- climate monitoring sensors for:
	- temperature
	- humidity
	- CO2
	- incident solar radiation (W/m^2) 


# Regulatory Requirements

1. Canadian Standards association (CSA)
2. [Canadian Electrical Code (CEC)](https://github.com/rhinocerose/eng4000-group-k/blob/main/documentation/requirements/regulatory/CEC-2021.pdf)
3. [National Fire Code (NFC)](https://github.com/rhinocerose/eng4000-group-k/blob/main/documentation/requirements/regulatory/NFC-2015.pdf)
4. [National Building Code (NBC)](https://github.com/rhinocerose/eng4000-group-k/blob/main/documentation/requirements/regulatory/NBC-2015.pdf)
5. [Occupational Health and Safety Act (OHSA)](https://www.ontario.ca/laws/statute/90o01)
6. Canadian Electrical License (309 A)

# Design Considerations

## SBC vs Microcontroller

### SBC Considerations
There are advantages to using a single board computer (SBC) like a Raspberry Pi, Beaglebone, or Nvidia Jetson, but there are also drawbacks.
#### SBC Pros
- commercial availability widespread
- multi-language programmability
- simplicity of networking and data transfer

#### SBC Cons
- inherently higher level
- overhead of OS
- less direct access to peripherals
- more complex board design

### Microcontroller Considerations
There are advantages to using a microcontroller , but there are also drawbacks.
#### Microcontroller Pros
- low part cost
- flexibility in sourcing
- integrated operation
- defined extensibility

#### Microcontroller Cons
- availability of individual components can constrain manufacture
- single-use board design can be susceptible to design flaws

## Multi-node Aggregation vs Standalone Operation
