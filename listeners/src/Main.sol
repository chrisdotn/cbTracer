// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./UniswapV3PoolListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        // UniswapV3Pool ABI-based triggers for BASE chain
        UniswapV3PoolListener poolListener = new UniswapV3PoolListener();
        ChainIdAbi memory baseUniswapV3PoolAbi = chainAbi(Chains.Base, UniswapV3Pool$Abi());
        
        // Add triggers for all UniswapV3Pool functions
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnBurnFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnCollectFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnCollectProtocolFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnFactoryFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnFeeFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnFeeGrowthGlobal0X128Function());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnFeeGrowthGlobal1X128Function());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnFlashFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnIncreaseObservationCardinalityNextFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnInitializeFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnLiquidityFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnMaxLiquidityPerTickFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnMintFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnObservationsFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnObserveFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnPositionsFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnProtocolFeesFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnSetFeeProtocolFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnSlot0Function());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnSnapshotCumulativesInsideFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnSwapFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnTickBitmapFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnTickSpacingFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnTicksFunction());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnToken0Function());
        addTrigger(baseUniswapV3PoolAbi, poolListener.triggerOnToken1Function());
    }
}
