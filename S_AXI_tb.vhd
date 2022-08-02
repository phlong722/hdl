-- ----------------------------------------------------------------------------------
-- -- Company: 
-- -- Engineer: 
-- -- 
-- -- Create Date: 08/01/2022 01:34:23 PM
-- -- Design Name: 
-- -- Module Name: S_AXI_tb - Behavioral
-- -- Project Name: 
-- -- Target Devices: 
-- -- Tool Versions: 
-- -- Description: 
-- -- 
-- -- Dependencies: 
-- -- 
-- -- Revision:
-- -- Revision 0.01 - File Created
-- -- Additional Comments:
-- -- 
-- ----------------------------------------------------------------------------------


-- library IEEE;
-- use IEEE.STD_LOGIC_1164.ALL;

-- -- Uncomment the following library declaration if using
-- -- arithmetic functions with Signed or Unsigned values
-- --use IEEE.NUMERIC_STD.ALL;

-- -- Uncomment the following library declaration if instantiating
-- -- any Xilinx leaf cells in this code.
-- --library UNISIM;
-- --use UNISIM.VComponents.all;

-- entity S_AXI_tb is
--     generic (
--             -- Width of S_AXI data bus
--             C_S_AXI_DATA_WIDTH	: integer	:= 32;
--             -- Width of S_AXI address bus
--             C_S_AXI_ADDR_WIDTH	: integer	:= 5
--         );
-- --  Port ( );
-- end S_AXI_tb;

-- architecture Behavioral of S_AXI_tb is
	
-- 	component multiplier_v1_0_S_AXI is 
-- 	   port (  
--             -- Global Clock Signal
--             S_AXI_ACLK    : in std_logic;
--             -- Global Reset Signal. This Signal is Active LOW
--             S_AXI_ARESETN    : in std_logic;
--             -- Write address (issued by master, acceped by Slave)
--             S_AXI_AWADDR    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
--             -- Write channel Protection type. This signal indicates the
--                 -- privilege and security level of the transaction, and whether
--                 -- the transaction is a data access or an instruction access.
--             S_AXI_AWPROT    : in std_logic_vector(2 downto 0);
--             -- Write address valid. This signal indicates that the master signaling
--                 -- valid write address and control information.
--             S_AXI_AWVALID    : in std_logic;
--             -- Write address ready. This signal indicates that the slave is ready
--                 -- to accept an address and associated control signals.
--             S_AXI_AWREADY    : out std_logic;
--             -- Write data (issued by master, acceped by Slave) 
--             S_AXI_WDATA    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
--             -- Write strobes. This signal indicates which byte lanes hold
--                 -- valid data. There is one write strobe bit for each eight
--                 -- bits of the write data bus.    
--             S_AXI_WSTRB    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
--             -- Write valid. This signal indicates that valid write
--                 -- data and strobes are available.
--             S_AXI_WVALID    : in std_logic;
--             -- Write ready. This signal indicates that the slave
--                 -- can accept the write data.
--             S_AXI_WREADY    : out std_logic;
--             -- Write response. This signal indicates the status
--                 -- of the write transaction.
--             S_AXI_BRESP    : out std_logic_vector(1 downto 0);
--             -- Write response valid. This signal indicates that the channel
--                 -- is signaling a valid write response.
--             S_AXI_BVALID    : out std_logic;
--             -- Response ready. This signal indicates that the master
--                 -- can accept a write response.
--             S_AXI_BREADY    : in std_logic;
--             -- Read address (issued by master, acceped by Slave)
--             S_AXI_ARADDR    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
--             -- Protection type. This signal indicates the privilege
--                 -- and security level of the transaction, and whether the
--                 -- transaction is a data access or an instruction access.
--             S_AXI_ARPROT    : in std_logic_vector(2 downto 0);
--             -- Read address valid. This signal indicates that the channel
--                 -- is signaling valid read address and control information.
--             S_AXI_ARVALID    : in std_logic;
--             -- Read address ready. This signal indicates that the slave is
--                 -- ready to accept an address and associated control signals.
--             S_AXI_ARREADY    : out std_logic;
--             -- Read data (issued by slave)
--             S_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
--             -- Read response. This signal indicates the status of the
--                 -- read transfer.
--             S_AXI_RRESP    : out std_logic_vector(1 downto 0);
--             -- Read valid. This signal indicates that the channel is
--                 -- signaling the required read data.
--             S_AXI_RVALID    : out std_logic;
--             -- Read ready. This signal indicates that the master can
--                 -- accept the read data and response information.
--             S_AXI_RREADY    : in std_logic
--         );
--     end component;
    
--     signal axi_aclk     : std_logic := '0';
--     signal axi_aresetn  : std_logic ;
--     signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
--     signal axi_awprot   : std_logic_vector(2 downto 0);
--     signal axi_awvalid  : std_logic;
--     signal axi_awready  : std_logic;
--     signal axi_wdata    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
--     signal axi_wstrb    : std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
--     signal axi_wvalid   : std_logic;
--     signal axi_wready   : std_logic;
--     signal axi_bresp    : std_logic_vector(1 downto 0);
--     signal axi_bvalid   : std_logic;
--     signal axi_bready   : std_logic;
--     signal axi_araddr   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
--     signal axi_arprot   : std_logic_vector(2 downto 0);
--     signal axi_arvalid  : std_logic;
--     signal axi_arready  : std_logic;
--     signal axi_rdata    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
--     signal axi_rresp    : std_logic_vector(1 downto 0);
--     signal axi_rvalid   : std_logic;
--     signal axi_rready   : std_logic;
	
-- begin

--     axi_aclk <= not axi_aclk after 10 ns;
    
--     DUT : multiplier_v1_0_S_AXI port map (
--        S_AXI_ACLK       => axi_aclk,
--        S_AXI_ARESETN    => axi_aresetn,
--        S_AXI_AWADDR     => axi_awaddr,
--        S_AXI_AWPROT     => axi_awprot,
--        S_AXI_AWVALID    => axi_awvalid,
--        S_AXI_AWREADY    => axi_awready,
--        S_AXI_WDATA      => axi_wdata,
--        S_AXI_WSTRB      => axi_wstrb,
--        S_AXI_WVALID     => axi_wvalid,
--        S_AXI_WREADY     => axi_wready,
--        S_AXI_BRESP      => axi_bresp,
--        S_AXI_BVALID     => axi_bvalid,
--        S_AXI_BREADY     => axi_bready,
--        S_AXI_ARADDR     => axi_araddr,
--        S_AXI_ARPROT     => axi_arprot,
--        S_AXI_ARVALID    => axi_arvalid,
--        S_AXI_ARREADY    => axi_arready,
--        S_AXI_RDATA      => axi_rdata,
--        S_AXI_RRESP      => axi_rresp,
--        S_AXI_RVALID     => axi_rvalid,
--        S_AXI_RREADY     => axi_rready
--        );
        
--     test_proc : process
--         begin
        
--            axi_aresetn  <= '0';
--            wait for 50 ns;
           
--            axi_aresetn  <= '1';
--         --    wait for 30 ns;
           
--         --    axi_wvalid   <= '1';
--         --    axi_awvalid  <= '1';
--         --    wait for 30 ns;
           
--         --    axi_wvalid   <= '1';
--         --    axi_awvalid  <= '1';
--         --    axi_awaddr   <= "00001";
--         --    axi_wdata    <= X"01020304";
           
--         end process;           
-- end Behavioral;


library ieee;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_1164.all;

entity tb_multiplier_v1_0_S_AXI is
end tb_multiplier_v1_0_S_AXI;

architecture tb of tb_multiplier_v1_0_S_AXI is
    constant c_s_axi_addr_width : integer := 5;
    constant c_s_axi_data_width : integer := 32;
    component multiplier_v1_0_S_AXI
        port (S_AXI_ACLK    : in std_logic;
              S_AXI_ARESETN : in std_logic;
              S_AXI_AWADDR  : in std_logic_vector (c_s_axi_addr_width-1 downto 0);
              S_AXI_AWPROT  : in std_logic_vector (2 downto 0);
              S_AXI_AWVALID : in std_logic;
              S_AXI_AWREADY : out std_logic;
              S_AXI_WDATA   : in std_logic_vector (c_s_axi_data_width-1 downto 0);
              S_AXI_WSTRB   : in std_logic_vector ((c_s_axi_data_width/8)-1 downto 0);
              S_AXI_WVALID  : in std_logic;
              S_AXI_WREADY  : out std_logic;
              S_AXI_BRESP   : out std_logic_vector (1 downto 0);
              S_AXI_BVALID  : out std_logic;
              S_AXI_BREADY  : in std_logic;
              S_AXI_ARADDR  : in std_logic_vector (c_s_axi_addr_width-1 downto 0);
              S_AXI_ARPROT  : in std_logic_vector (2 downto 0);
              S_AXI_ARVALID : in std_logic;
              S_AXI_ARREADY : out std_logic;
              S_AXI_RDATA   : out std_logic_vector (c_s_axi_data_width-1 downto 0);
              S_AXI_RRESP   : out std_logic_vector (1 downto 0);
              S_AXI_RVALID  : out std_logic;
              S_AXI_RREADY  : in std_logic);
    end component;

    signal S_AXI_ACLK    : std_logic;
    signal S_AXI_ARESETN : std_logic;
    signal S_AXI_AWADDR  : std_logic_vector (c_s_axi_addr_width-1 downto 0);
    signal S_AXI_AWPROT  : std_logic_vector (2 downto 0);
    signal S_AXI_AWVALID : std_logic;
    signal S_AXI_AWREADY : std_logic;
    signal S_AXI_WDATA   : std_logic_vector (c_s_axi_data_width-1 downto 0);
    signal S_AXI_WSTRB   : std_logic_vector ((c_s_axi_data_width/8)-1 downto 0);
    signal S_AXI_WVALID  : std_logic;
    signal S_AXI_WREADY  : std_logic;
    signal S_AXI_BRESP   : std_logic_vector (1 downto 0);
    signal S_AXI_BVALID  : std_logic;
    signal S_AXI_BREADY  : std_logic;
    signal S_AXI_ARADDR  : std_logic_vector (c_s_axi_addr_width-1 downto 0);
    signal S_AXI_ARPROT  : std_logic_vector (2 downto 0);
    signal S_AXI_ARVALID : std_logic;
    signal S_AXI_ARREADY : std_logic;
    signal S_AXI_RDATA   : std_logic_vector (c_s_axi_data_width-1 downto 0);
    signal S_AXI_RRESP   : std_logic_vector (1 downto 0);
    signal S_AXI_RVALID  : std_logic;
    signal S_AXI_RREADY  : std_logic;

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : multiplier_v1_0_S_AXI
    port map (S_AXI_ACLK    => S_AXI_ACLK,
              S_AXI_ARESETN => S_AXI_ARESETN,
              S_AXI_AWADDR  => S_AXI_AWADDR,
              S_AXI_AWPROT  => S_AXI_AWPROT,
              S_AXI_AWVALID => S_AXI_AWVALID,
              S_AXI_AWREADY => S_AXI_AWREADY,
              S_AXI_WDATA   => S_AXI_WDATA,
              S_AXI_WSTRB   => S_AXI_WSTRB,
              S_AXI_WVALID  => S_AXI_WVALID,
              S_AXI_WREADY  => S_AXI_WREADY,
              S_AXI_BRESP   => S_AXI_BRESP,
              S_AXI_BVALID  => S_AXI_BVALID,
              S_AXI_BREADY  => S_AXI_BREADY,
              S_AXI_ARADDR  => S_AXI_ARADDR,
              S_AXI_ARPROT  => S_AXI_ARPROT,
              S_AXI_ARVALID => S_AXI_ARVALID,
              S_AXI_ARREADY => S_AXI_ARREADY,
              S_AXI_RDATA   => S_AXI_RDATA,
              S_AXI_RRESP   => S_AXI_RRESP,
              S_AXI_RVALID  => S_AXI_RVALID,
              S_AXI_RREADY  => S_AXI_RREADY);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that S_AXI_ACLK is really your main clock signal
    S_AXI_ACLK <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        S_AXI_AWADDR <= (others => '0');
        S_AXI_AWPROT <= (others => '0');
        S_AXI_AWVALID <= '0';
        S_AXI_WDATA <= (others => '0');
        S_AXI_WSTRB <= (others => '0');
        S_AXI_WVALID <= '0';
        S_AXI_BREADY <= '0';
        S_AXI_ARADDR <= (others => '0');
        S_AXI_ARPROT <= (others => '0');
        S_AXI_ARVALID <= '0';
        S_AXI_RREADY <= '0';

        -- Reset generation
        -- EDIT: Check that S_AXI_ARESETN is really your reset signal
        S_AXI_ARESETN <= '0';
        wait for 100 ns;
        S_AXI_ARESETN <= '1';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 10*TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;