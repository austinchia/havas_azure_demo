CREATE TABLE Clients (
  ClientID INT PRIMARY KEY,
  ClientName NVARCHAR(100)
);

CREATE TABLE Channels (
  ChannelID INT PRIMARY KEY,
  ChannelName NVARCHAR(100)
);

CREATE TABLE Transactions (
  TransactionID NVARCHAR(20) PRIMARY KEY,
  ClientID INT,
  ChannelID INT,
  Amount DECIMAL(10,2),
  PaymentMethod NVARCHAR(50),
  PaymentDate DATE,
  Month NVARCHAR(20),
  FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
  FOREIGN KEY (ChannelID) REFERENCES Channels(ChannelID)
);