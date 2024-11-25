# cso_hsf_x_fitness

Code and final modeling data for "Linking habitat selection to individual fitness in California spotted owls."

## File Structure

### code (in order of relevance)
- misc_functions.R: functions used throughout project
- location_cleaning.Rmd: wrangling GPS data
- used_available_cleaning.Rmd: dividing GPS data into nightly, hourly, and minute-by-minute scales; setting up available points
- repro_cleaning.Rmd: wrangling reproductive data
- chtc_pre_post.Rmd: sending jobs to CHTC to extract spatial data + joining them back together
- chtc-checks.Rmd: quality control for spatial data extraction
- scale-optim-rsf.Rmd: spatial scale optimization modeling for nightly data
- scale-optim-ssf-hr.Rmd: spatial scale optimization modeling for hourly data
- scale-optim-ssf-min.Rmd: spatial scale optimization modeling for minute-by-minute data
- models-rsf.Rmd: models for habitat selection at nightly scale
- models-ssf-hr.Rmd: models for habitat selection at the hourly scale
- models-ssf-min.Rmd: models for habitat selection at the minute-by-minute scale
- repro_covs_cleaning.Rmd: wrangling control covariates and individual owl preferences to repro data
- lifetime-repro.Rmd: wrangling long-term repro data; long-term repro trends for study area
- models-repro-nesting.Rmd: modeling attempted nesting
- models-repro-fledglings.Rmd: modeling number of young fledged + sturdiness analysis of which model to use
- models-repro-ltr.Rmd: modeling long-term repro outcomes

### data-public
- gps_rsf_scales.csv: nightly location data with all scales of spatial data extracted to it, used in scale-optim-rsf.Rmd
- gps_ssf-hr_scales.csv: hourly location data with all scales of spatial data extracted to it, used in scale-optim-ssf-hr.Rmd
- gps_ssf-min_scales.csv: minute-by-minute location data with all scales of spatial data extracted to it, used in scale-optim-ssf-min.Rmd
- rsf_final.csv: nightly location data with optimal spatial scales, used in models-rsf.Rmd
- ssf-hr_final.csv: hourly location data with optimal spatial scales, used in models-ssf-hr.Rmd
- ssf-min_final.csv: minute-by-minute location data with optimal spatial scales, used in models-ssf-min.Rmd
- rsf_results.csv: nightly habitat selection analysis results: selective preferences by owl
- ssf_hr_results.csv: hourly habitat selection analysis results: selective preferences by owl
- ssf_min_results.csv: minute-by-minute habitat selection analysis results: selective preferences by owl
- repro_rsf_covs.csv: individual owl nightly selective preferences matched with reproductive outcomes and other covariates
- repro_ssf_hr_covs.csv: individual owl hourly selective preferences matched with reproductive outcomes and other covariates
- repro_ssf_min_covs.csv: individual owl minute-by-minute selective preferences matched with reproductive outcomes and other covariates
- ltr_rsf.csv: individual owl nightly selective preferences matched with long-term reproductive outcomes
- ltr_ssf_hr.csv: individual owl hourly selective preferences matched with long-term reproductive outcomes
- ltr_ssf_min.csv:individual owl minute-by-minute selective preferences matched with long-term reproductive outcomes

### data-private
- contains location information/covariates not used in our analyses/spatial data

### results
- nest_rsf.csv: results for attempting nesting based on nightly selective preferences
- nest_ssf-hr.csv: results for attempting nesting based on hourly selective preferences
- nest_ssf-min.csv: results for attempting nesting based on minute-by-minute selective preferences
- fledge_n_rsf.csv: results for number of young fledged based on nightly selective preferences (linear, used for inference)
- fledge_n_ssf-hr.csv: results for number of young fledged based on hourly selective preferences (linear, used for inference)
- fledge_n_ssf-min.csv: results for number of young fledged based on minute-by-minute selective preferences (linear, used for inference)
- fledge_p_*: results for number of young fledged (poisson regression)
- fledge_o_*: results for number of young fledged (ordinal logistic regression)
- ltr_rsf.csv: results for long-term reproductive outcomes by nightly selective preferences
- ltr_ssf-min.csv: results for long-term reproductive outcomes by minute-by-minute selective preferences
