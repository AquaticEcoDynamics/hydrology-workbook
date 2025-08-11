
## Measuring Stream Velocity & Discharge {#E2_2 .unnumbered}

The process of measuring stream flow (volume rate of flow), or
discharge, is called stream gauging. There are numerous methods of
stream gauging, including direct methods, such as volumetric gauging,
and dilution methods, as well as indirect methods involving
stage-discharge relations, or rating curves. Since the velocity of a
stream varies with depth and width across a stream, it is important to
understand what it is you want to measure when choosing a stream gauging
method. If you are interested in stream surface velocity, a simple float
method would work well. This method involves throwing some buoyant,
highly visible object into the stream and measuring the time it takes to
float a known distance. If you are interested in obtaining a more
accurate stream discharge measurement, the velocity-area method is your
method of choice.

Stream flow (discharge) can be measured based on two fundamental
methods, which are each expanded upon below (refer to lecture 3 for
                                             details). The first requires a direct measurement of velocity, whereas
the second is an approximation based on stream-bed slope and geometry.

### Flow Rate: Velocity-Area Method {#E2_3 .unnumbered}

Flow estimates in natural streams and artificial channels under steady
(no change in depth with time) and uniform (no change in depth with
                                            space) conditions can be computed by the product of mean flow velocity
(integrated in depth and across the channel) and the cross-sectional
area of flow. The equation $Q = V * A$, were $V$ (m/s) is the mean
velocity and $A$ (m^2^) is the flow (or water) cross-sectional area is
used for this purpose. Large streams and rivers, a section control is
needed to generate the "rating curve" thus establishing a relationship
between water stage height ($H$) and flow discharge ($Q$). In this case,
both flow velocity measurements and cross-sectional areas are needed.

Discharge using the Velocity-Area method is measured by integrating the
area and velocity of each point across the stream. The channel or stream
is divided into sections based on where the velocity and stage height
measurements were taken in the cross-section of the stream/channel. The
flow velocity is measured using a current meter (i.e. propeller,
                                                 electromagnetic, ultrasonic, and Doppler).

The discharge is computed using:
  
  <center>
  ```{=tex}
\begin{equation}
Q = \sum^{n}_{i=0} (V_{i} * \text{Area}_{i})
(\#eq:E2equation1)
  \end{equation}
  ```
  </center>
    
    where $n$ is the number of vertical for measuring velocities, $V_{i}$ is
  the mean velocity value for vertical $i$ (m/s) and $\text{Area}_i$ is
  the cross-sectional area around vertical $i$ (m^2^). The cross-sectional
  area is best estimated by treating the sections as rectangles, trapezia
  or triangles.
  
  <center>
    ```{r E2image1, echo=FALSE, fig.cap="Current-meter discharge measurements are made by determining the discharge in each subsection of a channel cross section and summing the subsection discharges to obtain a total discharge.", out.width = '50%'}
  knitr::include_graphics("images/exercise2/image1.png")
  ```
  </center>
    
    To measure stream velocity we can utilise a "**swoffer**" -- a pole with
  a propeller on the end with an electronic logger recording the
  rotations. A current meter is so designed that its rotation speed varies
  linearly with the stream velocity at the location of the instrument.
  
  A more modern alternative is an "ADV" (Acoustic Doppler Velocimeter).
  This relies on a method where it looks at the scatter of sound waves
  rebounding of particles/bubbles in the water, and based on the "Doppler
effect" (recall the sound of a train changing pitch as it moves past
         you), it can compute the water velocity.
  
  <center>
    ```{r E2image2, echo=FALSE, fig.cap="An ADV - used to measure stream velocity.", out.width = '30%'}
  knitr::include_graphics("images/exercise2/image2.png")
  ```
  </center>
    
    <br>
    
    **Activity:** Watch the videos below showing the principles of how to
  measure the velocity of water. Then calculate the streamflow at the two
  sites in Table. The "section" column tells you nominally where you are
  across the x-section, the "width" column is the actual width of flow you
  should use in your calculations. Each velocity and depth measurement was
  made at the distance across the stream reported in the "distance"
  column.
  
  -   Does the wider stream section have more streamflow? Is this what you
  would have expected?
    
    -   Site 1 is upstream of Site 2, did the flow increase or decrease
  downstream? What might have caused this change in flow?
    
    <br>
    
    <center>
    ::: {style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"}
  <iframe style="border: 0; top: 0; left: 0; width: 100%; height: 100%; position: absolute;" src="https://www.youtube.com/embed/c1tQcxyRioQ" allowfullscreen scrolling="no" allow="encrypted-media; accelerometer; gyroscope; picture-in-picture">
    </iframe>
    :::
    </center>
    
    <br>
    
    <center>
    ::: {style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"}
  <iframe style="border: 0; top: 0; left: 0; width: 100%; height: 100%; position: absolute;" src="https://www.youtube.com/embed/_k1BTDjZfbU" allowfullscreen scrolling="no" allow="encrypted-media; accelerometer; gyroscope; picture-in-picture">
    </iframe>
    :::
    </center>
    
    <br>
    
    <center>
    ```{r E2table1, echo=FALSE, message=FALSE, warning=FALSE}
  library(knitr)
  library(kableExtra)
  options(kableExtra.html.bsTable = F, knitr.kable.NA = '')
  table1 <- read.csv("tables/exercise2/table1.csv", check.names=FALSE)
  kable(table1,"html", escape = F, align = rep('c'), caption = "Measured data for velocity-area method of calculating streamflow",
        bootstrap_options = "hover") %>%
    kable_styling(table1, bootstrap_options = "hover", "striped",
                  full_width = F, position = "center",
                  font_size = 12) %>%
    column_spec(1, width_min = "7.9em") %>%
    column_spec(2, width_min = "7.9em") %>%
    column_spec(3, width_min = "7.9em") %>%
    column_spec(4, width_min = "7.9em") %>%
    column_spec(5, width_min = "7.9em") %>%
    column_spec(6, width_min = "7.9em") %>%
    column_spec(7, width_min = "7.9em") %>%
    row_spec(1:12, background = 'white') %>%
    scroll_box(width = "100%", height = "467.5px",
               fixed_thead = FALSE)
  ```
  </center>
    
    <br>
    
    ### Flow Rate: Manning's Formula {#E2_4 .unnumbered}
    
    Manning's formula for estimating streamflow (in m^3^s^-1^) from basic
channel geometry, slope and roughness is:

<center>
```{=tex}
\begin{equation}
Q = \frac{1}{n}(A\space{}R^{\frac{2}{3}}\space{}S^{\frac{1}{2}})
(\#eq:E2equation2)
\end{equation}
```
</center>

Where: $A$ is the channel cross-sectional area (m^2^) ; $R$ is the
hydraulic radius given by $\frac{A}{P}$ ; $P$ is the wetted perimeter
(i.e. bed plus banks; m); $S$ is the channel slope (m/m); $n$ is
Manning's 'n' (which is an empirical roughness coefficient).
  
  In practice, when you are in the field the bottom slope ($S$) will be
  measured by using a differential GPS (DGPS). You also need to measure
  the 'wetted perimeter' ($P$) of the channel and the cross sectional area
  ($A$). The roughness coefficient ($n$) should be assumed from the
  literature, based on your observations or the stream and a table like
  the one below, or [here](https://pubs.usgs.gov/wsp/2339/report.pdf), or
  [here](https://www.agric.wa.gov.au/water-management/mannings-roughness-coefficient),
  or
  [here](https://www.brisbane.qld.gov.au/sites/default/files/ncd_appendixc_part3.pdf).
  
  <center>
    ```{r E2image3, echo=FALSE, fig.cap="", out.width = '70%'}
  knitr::include_graphics("images/exercise2/image3.png")
  ```
  </center>
    
    <br>
    
    **Activity:** For this activity we will use some of the same measured
  data that we used for the velocity-area method. Those measurements were
  taken on [Carey Brook](https://parks.dpaw.wa.gov.au/sites/default/files/downloads/parks/2019_153%20Carey%20Brook%20fact%20sheet%20May%202019.pdf), a tributary to the [Donnelly River](https://rivers.dwer.wa.gov.au/catchment/donnelly-river/) in south-west
  Western Australia (near Pemberton). You have already calculated the
  total area (sum the individual areas calculated in the velocity-area
              method). Draw a scale diagram of your chosen cross-section to estimate
  the wetted perimeter. Use the slope over the 5.2 km of Carey Bk between
  the main highway (25 m AHD) and where it flows into the Donnelly River
  (7 m AHD). Now you just need a roughness parameter, Manning's $n$, and
you can solve Equation \@ref(eq:E2equation2).

-   How does this streamflow estimate compare to the answer you got
    using the velocity-area method above?

-   How sensitive is your answer to the value of Manning's $n$?
    
    