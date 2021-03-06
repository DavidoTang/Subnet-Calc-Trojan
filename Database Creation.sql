CREATE TABLE Device (
	UUID varchar(50),
    lshw varchar(13000),
    lscpu varchar(500),
    lsblk varchar(3000),
    PRIMARY KEY (UUID)
);

CREATE TABLE RunLog (
	LogID int AUTO_INCREMENT,
    UUID varchar(50),
    KernelVer varchar(60),
    Hostname varchar(255),
    Username varchar(32),
    KernelRelease varchar(20),
    TimeRun datetime,
    lsusb varchar(100),
    LocalIP varchar(15),
    ExternalIP varchar(15),
    GatewayIP varchar(15),
    NewLocalUser char(1),
    SSHserver char(1),
    NewSSHuser char(1),
    PRIMARY KEY (LogID)
);
ALTER TABLE RunLog ADD CONSTRAINT FOREIGN KEY UUID_FK (UUID) REFERENCES Device (UUID);
ALTER TABLE Device ADD Column DateInstalled datetime;
ALTER TABLE Device MODIFY lscpu varchar(1600);
ALTER TABLE RunLog MODIFY KernelRelease varchar(51);