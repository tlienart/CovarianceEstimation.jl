module CovarianceEstimation

using Statistics
import Statistics: cov
using LinearAlgebra

"""
    CovarianceEstimator

Basic type for all covariance estimators.
"""
abstract type CovarianceEstimator end

export cov
export CovarianceEstimator, Simple,
    LinearShrinkageEstimator,
    # Targets for linear shrinkage
    DiagonalUnitVariance, DiagonalCommonVariance, DiagonalUnequalVariance,
    CommonCovariance, PerfectPositiveCorrelation, ConstantCorrelation


include("utils.jl")
include("simplecov.jl")
include("linearshrinkage.jl")


end # module
