# Allwetterzoo Core Business Central Development Extension

This repository contains an AL (Application Language) extension for Microsoft Dynamics 365 Business Central. The extension includes multilanguage **Table Extension** and **Page Extension**.

## Table Extension - `50100 CustomerTableExt`

This extension customizes the "Customer" table in Microsoft Dynamics 365 Business Central by adding a new fieds.

### Fields:
- **Pate (Text[200])**
- **Schenker (Text[200])**
- **Unterlagen verschickt am (Date)**
- **Mailadresse und Telefonnummer (Text[100])**
- **Verlängerung (Boolean)**
- **Pate seit (Date)**
- **Pate hat ein Patenschild (Boolean)**

## Page Extension - `50100 CustomerCardPageExt`

This extension customizes the "Customer Card" page in Microsoft Dynamics 365 Business Central by adding a new group of fieds. This group is displayed after the existing "General" group on the page.
### Layout Modifications
- **Group Added**: A new group, `TierPatenschaftGroup`, is added to the layout after the "General" group.
- **Fields Added**: The following fields are added to the new group:
  - **Pate**
  - **Schenker**
  - **Unterlagen verschickt am**
  - **Mailadresse und Telefonnummer**
  - **Verlangerung**
  - **Pate seit**
  - **Pate hat ein Patenschild**

## Page Extension - `50101 ItemListPageExt`

This extension modifies the behavior of the standard "Item List" page in Microsoft Dynamics 365 Business Central. The extension is designed to filter the items displayed on the page by setting a filter for the `Blocked` field of the `Item` record.
The `OnOpenPage` trigger in this page extension applies a filter to the `Blocked` field of the `Item` record, ensuring that only items where the `Blocked` field is set to `false` will be visible when the page is opened.




