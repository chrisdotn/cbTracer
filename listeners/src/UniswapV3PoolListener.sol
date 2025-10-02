// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

/// Index calls to all UniswapV3Pool functions
/// This listener implements handlers for all available functions in the UniswapV3Pool ABI
contract UniswapV3PoolListener is 
    UniswapV3Pool$OnBurnFunction,
    UniswapV3Pool$OnCollectFunction,
    UniswapV3Pool$OnCollectProtocolFunction,
    UniswapV3Pool$OnFactoryFunction,
    UniswapV3Pool$OnFeeFunction,
    UniswapV3Pool$OnFeeGrowthGlobal0X128Function,
    UniswapV3Pool$OnFeeGrowthGlobal1X128Function,
    UniswapV3Pool$OnFlashFunction,
    UniswapV3Pool$OnIncreaseObservationCardinalityNextFunction,
    UniswapV3Pool$OnInitializeFunction,
    UniswapV3Pool$OnLiquidityFunction,
    UniswapV3Pool$OnMaxLiquidityPerTickFunction,
    UniswapV3Pool$OnMintFunction,
    UniswapV3Pool$OnObservationsFunction,
    UniswapV3Pool$OnObserveFunction,
    UniswapV3Pool$OnPositionsFunction,
    UniswapV3Pool$OnProtocolFeesFunction,
    UniswapV3Pool$OnSetFeeProtocolFunction,
    UniswapV3Pool$OnSlot0Function,
    UniswapV3Pool$OnSnapshotCumulativesInsideFunction,
    UniswapV3Pool$OnSwapFunction,
    UniswapV3Pool$OnTickBitmapFunction,
    UniswapV3Pool$OnTickSpacingFunction,
    UniswapV3Pool$OnTicksFunction,
    UniswapV3Pool$OnToken0Function,
    UniswapV3Pool$OnToken1Function
{
    /// Emitted events are indexed.
    /// This event is emitted for function calls that modify pool liquidity.
    event LiquidityModifyingFunctionCall(address pool, string functionName);
    
    /// This event is emitted for function calls that do not modify pool liquidity.
    event LiquidityUnchangedFunctionCall(address pool, string functionName);

    // Burn function handler
    function onBurnFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$BurnFunctionInputs memory inputs,
        UniswapV3Pool$BurnFunctionOutputs memory outputs
    ) external override {
        emit LiquidityModifyingFunctionCall(ctx.txn.call.callee(), "burn");
    }

    // Collect function handler
    function onCollectFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$CollectFunctionInputs memory inputs,
        UniswapV3Pool$CollectFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "collect");
    }

    // CollectProtocol function handler
    function onCollectProtocolFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$CollectProtocolFunctionInputs memory inputs,
        UniswapV3Pool$CollectProtocolFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "collectProtocol");
    }

    // Factory function handler
    function onFactoryFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$FactoryFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "factory");
    }

    // Fee function handler
    function onFeeFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$FeeFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "fee");
    }

    // FeeGrowthGlobal0X128 function handler
    function onFeeGrowthGlobal0X128Function(
        FunctionContext memory ctx,
        UniswapV3Pool$FeeGrowthGlobal0X128FunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "feeGrowthGlobal0X128");
    }

    // FeeGrowthGlobal1X128 function handler
    function onFeeGrowthGlobal1X128Function(
        FunctionContext memory ctx,
        UniswapV3Pool$FeeGrowthGlobal1X128FunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "feeGrowthGlobal1X128");
    }

    // Flash function handler
    function onFlashFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$FlashFunctionInputs memory inputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "flash");
    }

    // IncreaseObservationCardinalityNext function handler
    function onIncreaseObservationCardinalityNextFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$IncreaseObservationCardinalityNextFunctionInputs memory inputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "increaseObservationCardinalityNext");
    }

    // Initialize function handler
    function onInitializeFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$InitializeFunctionInputs memory inputs
    ) external override {
        emit LiquidityModifyingFunctionCall(ctx.txn.call.callee(), "initialize");
    }

    // Liquidity function handler
    function onLiquidityFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$LiquidityFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "liquidity");
    }

    // MaxLiquidityPerTick function handler
    function onMaxLiquidityPerTickFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$MaxLiquidityPerTickFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "maxLiquidityPerTick");
    }

    // Mint function handler
    function onMintFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$MintFunctionInputs memory inputs,
        UniswapV3Pool$MintFunctionOutputs memory outputs
    ) external override {
        emit LiquidityModifyingFunctionCall(ctx.txn.call.callee(), "mint");
    }

    // Observations function handler
    function onObservationsFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$ObservationsFunctionInputs memory inputs,
        UniswapV3Pool$ObservationsFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "observations");
    }

    // Observe function handler
    function onObserveFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$ObserveFunctionInputs memory inputs,
        UniswapV3Pool$ObserveFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "observe");
    }

    // Positions function handler
    function onPositionsFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$PositionsFunctionInputs memory inputs,
        UniswapV3Pool$PositionsFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "positions");
    }

    // ProtocolFees function handler
    function onProtocolFeesFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$ProtocolFeesFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "protocolFees");
    }

    // SetFeeProtocol function handler
    function onSetFeeProtocolFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$SetFeeProtocolFunctionInputs memory inputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "setFeeProtocol");
    }

    // Slot0 function handler
    function onSlot0Function(
        FunctionContext memory ctx,
        UniswapV3Pool$Slot0FunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "slot0");
    }

    // SnapshotCumulativesInside function handler
    function onSnapshotCumulativesInsideFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$SnapshotCumulativesInsideFunctionInputs memory inputs,
        UniswapV3Pool$SnapshotCumulativesInsideFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "snapshotCumulativesInside");
    }

    // Swap function handler
    function onSwapFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$SwapFunctionInputs memory inputs,
        UniswapV3Pool$SwapFunctionOutputs memory outputs
    ) external override {
        emit LiquidityModifyingFunctionCall(ctx.txn.call.callee(), "swap");
    }

    // TickBitmap function handler
    function onTickBitmapFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$TickBitmapFunctionInputs memory inputs,
        UniswapV3Pool$TickBitmapFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "tickBitmap");
    }

    // TickSpacing function handler
    function onTickSpacingFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$TickSpacingFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "tickSpacing");
    }

    // Ticks function handler
    function onTicksFunction(
        FunctionContext memory ctx,
        UniswapV3Pool$TicksFunctionInputs memory inputs,
        UniswapV3Pool$TicksFunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "ticks");
    }

    // Token0 function handler
    function onToken0Function(
        FunctionContext memory ctx,
        UniswapV3Pool$Token0FunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "token0");
    }

    // Token1 function handler
    function onToken1Function(
        FunctionContext memory ctx,
        UniswapV3Pool$Token1FunctionOutputs memory outputs
    ) external override {
        emit LiquidityUnchangedFunctionCall(ctx.txn.call.callee(), "token1");
    }
}
