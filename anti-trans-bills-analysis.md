# Introduction

**Note. *All data (including merged and filtered data) used in the
analysis below is open-access and can be found [on
GitHub](https://github.com/kaince/anti-trans-bills).***

Americans who identify as lesbian, gay, bisexual, transgender, queer, or
many other identities under the queer and trans umbrella (LGBTQ+ folks
for short) have long been targeted by conservative groups in the U.S.
Nonetheless, the mid-2010s seemed to many to be a time of increasing
acceptance of LGBTQ+ identities; the *Time* magazine article “The
Transgender Tipping Point,” for example, quoted actress and advocate
Laverne Cox as saying, “We are in a place now where more and more trans
people want to come forward and say, ‘This is who I am.’ \[…\] More of
us are living visibly and pursuing our dreams visibly, so people can
say, ‘Oh yeah, I know someone who is trans.’ When people have points of
reference that are humanizing, that demystifies difference (Katy
Steinmetz 2014).”

However, after the 2015 Supreme Court ruling in *Obergefell v. Hodges*
legalizing “same-sex marriage” (though some of those who were married
after *Obergefell* identify as trans or nonbinary), conservative groups
have sought to target LGBTQ+ people through “religious freedom” laws
allowing for discrimination against “same-sex couples”, and more
recently, transgender people, especially transgender youth. Despite the
increasing prevalence of trans and nonbinary people in American society,
as well as the recent legislative and political attacks on these groups,
relatively few academic studies have been conducted on the impact of the
surge of anti-trans legislation since 2019. In this article, we attempt
to collate data from various sources to analyze the growth, types,
progress, and impacts of various anti-trans and -nonbinary bills from
2018 to 2023.

We emphasize these years because, in 2019, the conservative Heritage
Foundation and conservative Christian Family Policy Alliance distributed
a model strategy for banning gender-affirming care to state legislators
at a conference (Harvard Law Review 2021). In 2020, a conference
attendee and South Dakota legislator published a version of the bill
seeking to criminalize doctors’ provision of puberty blockers and
hormones to transgender patients under the age of 16. Similar bills
followed the same year: in Colorado, Florida, Illinois, Iowa, Kentucky,
Missouri, Oklahoma, and South Carolina (Bauer 2020). Though the 2020
bills failed, the language in bills in South Carolina, South Dakota, and
Arkansas in 2021 attempting to allow physicians to refuse to treat
transgender children shared similar language, which originated in a
“Model Conscience Protection Act” published by Kevin Theriot and Ken
Connelly of the conservative Alliance Defending Freedom (Theriot and
Connelly, n.d.). As we will see below, more and more bills are being
proposed, and more are passing, every year since.

These bills go against studies showing that transgender children between
the age of 5 and 12 viewed their gender identities similarly to
cisgender children (Olson, Key, and Eaton 2015), among other academic
studies. The leading association of pediatricians in the United States
recommends “that youth who identify as \[transgender\] have access to
comprehensive, gender-affirming, and developmentally appropriate health
care that is provided in a safe and inclusive clinical space…\[and\]
that pediatricians have a role in advocating for policies and laws that
protect youth who identify as \[transgender\] from discrimination and
violence (Rafferty et al. 2018).”

*Gender-affirming healthcare* is defined by the World Health
Organization as multiple social, psychological, behavioral, and medical
treatments “designed to support and affirm an individual’s gender
identity” when it differs from their assigned gender at birth (González
2023). Usually, gender-affirming care begins with *social transition*,
in which a person begins to present as their correct, felt gender
identity in public. Next, *puberty blockers* may be used to delay
pubescent changes that do not align with the individual’s gender
identity, and *hormone therapy* may be used to align with their gender
identity, some of whose effects are reversible. According to guidelines
from major medical organizations, hormone therapy should be started once
pubescent changes begin. Finally, usually for people over 18,
gender-affirming surgeries (including top or bottom surgery) may be
considered. If surgeries are offered to teens, multiple health
professionals must first evaluate the teen.

Recent bills target all aspects of gender-affirming healthcare, mostly
for people under 18 but increasingly for those under 21 or even all
adults, as with the 2023 ruling by Missouri’s Attorney General Andrew
Bailey that the state’s consumer protection law prevents all Missourians
from receiving puberty blockers, hormone therapy, or surgery unless they
meet very narrow guidelines (ACLU of Missouri 2023).

We briefly describe how each aspect of gender-affirming healthcare is
targeted by the categories of bills used in the data analysis below.
Social transition is targeted through `youth athletics` bills preventing
young people from competing on sports teams under their identified
gender. `ID requirements` prevent the changing of the “sex” listed on
birth certificates, driver’s licenses, and other government
IDs.`Public facilities` laws prevent all trans people from using
restrooms and other gendered public facilities that match their gender
identity. `Schools/education` laws vary but include laws banning
teachers from using students’ correct pronouns at all or without
parental permission, discussing queer and trans/nonbinary identities in
the classroom, and displaying items such as pride flags supporting queer
and trans identities, among others.

`Drag performance` laws (perhaps better categorized as “gender
expression laws”), a recent development as of 2023, ban drag shows or
“male or female impersonators” in certain circumstances, such as “in the
presence of minors” (Tennessee’s Senate Bill 3) or on Sundays from 1
a.m. to 12 p.m. (Arizona’s SB 1030). Laws barring municipalities from
passing `nondiscrimination protections`, as well as `religious freedom`
laws, legalize discrimination in certain circumstances against LGBTQ+
people, particularly by those with a “strongly felt religious
conviction” that being LGBTQ+ is wrong. Finally, `healthcare` laws
prevent gender-affirming care for various groups in various ways, often
including bans on hormone therapy and surgery for those under 18.

# Methods

## Importing and Merging the Data

We download .csv files from the website
[tracktranslegislation.com](https://tracktranslegislation.com) (Trans
Legislation Tracker, n.d.), which in turn obtains the data from
[LegiScan](https://legiscan.com). This data is up-to-date from 2021
through April 21, 2023. In order to track bills prior to 2021, we use
data from the ACLU’s [“Past Legislation Affecting LGBT Rights Across the
Country” pages for 2018, 2019, and
2020](https://www.aclu.org/past-legislation-affecting-lgbt-rights-across-country-2018)
(American Civil Liberties Union 2018, 2019, 2020). Note that the 2020
page was last updated on March 20, 2020, since many state legislatures
were suspended or closed during the first year of the COVID-19 pandemic;
the ACLU page promised to “update the tracker as major new developments
occur\[red\] .” This data has distinct variable names and organization,
so we also modify the ACLU data to match the Track Trans Legislation
data as closely as possible.

For example, bills that were withdrawn, not passed by the end of a given
legislative session, explicitly listed as “Dead”, or were recommended
against by a committee and did not proceed in the legislature were
relabeled “Dead” (at least for that year). The exception was when the
bill description is specifically listed as “hearing scheduled”,
“referred to committee”, carried over from another year, or otherwise
makes clear that the bill is still under consideration, in which case
“Introduced” or “Crossed Over” (depending on whether the bill had been
passed by at least one chamber) were used.

We only include bills in categories tracked by both data sources; this
leaves out, for example, bills preventing localities from passing
anti-discrimination ordinances within a state. We use a broad reading of
the “religious freedom” category to include bills that allow for people
with “sincerely-held religious beliefs” in that state to challenge
nondiscrimination laws, discriminate against LGBTQ+ people, refuse to
provide healthcare to LGBTQ+ people, refuse to provide adoption services
to LGBTQ+ people; discriminate against married LGBTQ+ people, and
receive funding for discriminatory student groups at public
universities, among others.

## Cleaning the Data

First, the 2018-2020 ACLU datasets code state names by their two-letter
abbreviations (e.g., “AZ” instead of “Arizona”), while Track Trans
Legislation uses full names. So we use an R function to convert full
names to abbreviations in the whole dataset. We verify that the only
“State” values that were not successfully converted to abbreviations are
for bills that were proposed at the federal level.

We note that, for example, the 2021 dataset includes some bills passed
in January 2022, so we eliminate duplicate bills.

This decreases the number of bills in our dataset from 927 to 893. Next,
note that the bills whose status is labeled `Introduced*` are those that
failed to meet their state’s “crossover deadline”, the date by which a
bill must pass out of the chamber in which it was introduced and to the
other chamber (e.g. State House vs. Senate). According to the site
[Track Trans Legislation](https://www.tracktranslegislation.com/), a
bill that is not passed in its initial chamber by the crossover deadline
“faces high procedural hurdles in order to move forward.” Thus, we wish
to classify these bills (at least for the current session) as
“dead/failed”.

Moreover, one bill’s status is listed as “Posted”, Kentucky’s HB132 in
2020. [LegiScan research](https://legiscan.com/KY/bill/HB132/2020)
reveals that this bill died in committee, so we update its status to
`Dead/Failed`.

There is one last formatting issue to address: the `Status` variable
could take on any of the values `Dead/Failed`, `Dead/Failed`, and
`Dead/Failed` (note the additional spaces). We combine them all into one
value.

# Results

## Bill Type vs. Status

We now summarize the relationships of the type of bill to its status to
determine whether specific types of bills were more likely to succeed.

Note that **crossing over** refers to a bill being passed out of one
state legislative chamber (either the State House or State Senate) and
moving forward for consideration in the other chamber. Thus, a bill that
has crossed over suggests majority support for the bill in at least one
chamber.

<div id="bjbvmooksr" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#bjbvmooksr table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#bjbvmooksr thead, #bjbvmooksr tbody, #bjbvmooksr tfoot, #bjbvmooksr tr, #bjbvmooksr td, #bjbvmooksr th {
  border-style: none;
}

#bjbvmooksr p {
  margin: 0;
  padding: 0;
}

#bjbvmooksr .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#bjbvmooksr .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#bjbvmooksr .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bjbvmooksr .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bjbvmooksr .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bjbvmooksr .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bjbvmooksr .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bjbvmooksr .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#bjbvmooksr .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#bjbvmooksr .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#bjbvmooksr .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#bjbvmooksr .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#bjbvmooksr .gt_spanner_row {
  border-bottom-style: hidden;
}

#bjbvmooksr .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#bjbvmooksr .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#bjbvmooksr .gt_from_md > :first-child {
  margin-top: 0;
}

#bjbvmooksr .gt_from_md > :last-child {
  margin-bottom: 0;
}

#bjbvmooksr .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#bjbvmooksr .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#bjbvmooksr .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#bjbvmooksr .gt_row_group_first td {
  border-top-width: 2px;
}

#bjbvmooksr .gt_row_group_first th {
  border-top-width: 2px;
}

#bjbvmooksr .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bjbvmooksr .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#bjbvmooksr .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#bjbvmooksr .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bjbvmooksr .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bjbvmooksr .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#bjbvmooksr .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#bjbvmooksr .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#bjbvmooksr .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bjbvmooksr .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bjbvmooksr .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bjbvmooksr .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bjbvmooksr .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bjbvmooksr .gt_left {
  text-align: left;
}

#bjbvmooksr .gt_center {
  text-align: center;
}

#bjbvmooksr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bjbvmooksr .gt_font_normal {
  font-weight: normal;
}

#bjbvmooksr .gt_font_bold {
  font-weight: bold;
}

#bjbvmooksr .gt_font_italic {
  font-style: italic;
}

#bjbvmooksr .gt_super {
  font-size: 65%;
}

#bjbvmooksr .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#bjbvmooksr .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#bjbvmooksr .gt_indent_1 {
  text-indent: 5px;
}

#bjbvmooksr .gt_indent_2 {
  text-indent: 10px;
}

#bjbvmooksr .gt_indent_3 {
  text-indent: 15px;
}

#bjbvmooksr .gt_indent_4 {
  text-indent: 20px;
}

#bjbvmooksr .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="8" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Bill Status by Bill Type</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Bill Type">Bill Type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Crossed Over">Crossed Over</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Dead/Failed">Dead/Failed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Introduced">Introduced</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Passed">Passed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Signed/Enacted">Signed/Enacted</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Vetoed">Vetoed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Total">Total</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Bill Type" class="gt_row gt_left">Drag Performance</td>
<td headers="Crossed Over" class="gt_row gt_right">6</td>
<td headers="Dead/Failed" class="gt_row gt_right">11</td>
<td headers="Introduced" class="gt_row gt_right">19</td>
<td headers="Passed" class="gt_row gt_right">0</td>
<td headers="Signed/Enacted" class="gt_row gt_right">2</td>
<td headers="Vetoed" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">38</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Healthcare</td>
<td headers="Crossed Over" class="gt_row gt_right">10</td>
<td headers="Dead/Failed" class="gt_row gt_right">85</td>
<td headers="Introduced" class="gt_row gt_right">112</td>
<td headers="Passed" class="gt_row gt_right">5</td>
<td headers="Signed/Enacted" class="gt_row gt_right">17</td>
<td headers="Vetoed" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">229</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">ID Updates</td>
<td headers="Crossed Over" class="gt_row gt_right">4</td>
<td headers="Dead/Failed" class="gt_row gt_right">9</td>
<td headers="Introduced" class="gt_row gt_right">15</td>
<td headers="Passed" class="gt_row gt_right">0</td>
<td headers="Signed/Enacted" class="gt_row gt_right">5</td>
<td headers="Vetoed" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">33</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Nondiscrimination Protections</td>
<td headers="Crossed Over" class="gt_row gt_right">0</td>
<td headers="Dead/Failed" class="gt_row gt_right">6</td>
<td headers="Introduced" class="gt_row gt_right">6</td>
<td headers="Passed" class="gt_row gt_right">1</td>
<td headers="Signed/Enacted" class="gt_row gt_right">0</td>
<td headers="Vetoed" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">13</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Other</td>
<td headers="Crossed Over" class="gt_row gt_right">8</td>
<td headers="Dead/Failed" class="gt_row gt_right">26</td>
<td headers="Introduced" class="gt_row gt_right">38</td>
<td headers="Passed" class="gt_row gt_right">1</td>
<td headers="Signed/Enacted" class="gt_row gt_right">4</td>
<td headers="Vetoed" class="gt_row gt_right">1</td>
<td headers="Total" class="gt_row gt_right">78</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Public Facilities</td>
<td headers="Crossed Over" class="gt_row gt_right">6</td>
<td headers="Dead/Failed" class="gt_row gt_right">29</td>
<td headers="Introduced" class="gt_row gt_right">22</td>
<td headers="Passed" class="gt_row gt_right">2</td>
<td headers="Signed/Enacted" class="gt_row gt_right">7</td>
<td headers="Vetoed" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">66</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Religious Freedom</td>
<td headers="Crossed Over" class="gt_row gt_right">1</td>
<td headers="Dead/Failed" class="gt_row gt_right">13</td>
<td headers="Introduced" class="gt_row gt_right">22</td>
<td headers="Passed" class="gt_row gt_right">1</td>
<td headers="Signed/Enacted" class="gt_row gt_right">4</td>
<td headers="Vetoed" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">41</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Schools / Education</td>
<td headers="Crossed Over" class="gt_row gt_right">8</td>
<td headers="Dead/Failed" class="gt_row gt_right">42</td>
<td headers="Introduced" class="gt_row gt_right">47</td>
<td headers="Passed" class="gt_row gt_right">1</td>
<td headers="Signed/Enacted" class="gt_row gt_right">4</td>
<td headers="Vetoed" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">102</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Youth Athletics</td>
<td headers="Crossed Over" class="gt_row gt_right">23</td>
<td headers="Dead/Failed" class="gt_row gt_right">70</td>
<td headers="Introduced" class="gt_row gt_right">158</td>
<td headers="Passed" class="gt_row gt_right">3</td>
<td headers="Signed/Enacted" class="gt_row gt_right">35</td>
<td headers="Vetoed" class="gt_row gt_right">4</td>
<td headers="Total" class="gt_row gt_right">293</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Total</td>
<td headers="Crossed Over" class="gt_row gt_right">66</td>
<td headers="Dead/Failed" class="gt_row gt_right">291</td>
<td headers="Introduced" class="gt_row gt_right">439</td>
<td headers="Passed" class="gt_row gt_right">14</td>
<td headers="Signed/Enacted" class="gt_row gt_right">78</td>
<td headers="Vetoed" class="gt_row gt_right">5</td>
<td headers="Total" class="gt_row gt_right">893</td></tr>
  </tbody>
  
  
</table>
</div>

We see what percentage of each bill status was made up of each bill
type:

<div id="aywmqrmuoq" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#aywmqrmuoq table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#aywmqrmuoq thead, #aywmqrmuoq tbody, #aywmqrmuoq tfoot, #aywmqrmuoq tr, #aywmqrmuoq td, #aywmqrmuoq th {
  border-style: none;
}

#aywmqrmuoq p {
  margin: 0;
  padding: 0;
}

#aywmqrmuoq .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#aywmqrmuoq .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#aywmqrmuoq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#aywmqrmuoq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#aywmqrmuoq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#aywmqrmuoq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#aywmqrmuoq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#aywmqrmuoq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#aywmqrmuoq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#aywmqrmuoq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#aywmqrmuoq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#aywmqrmuoq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#aywmqrmuoq .gt_spanner_row {
  border-bottom-style: hidden;
}

#aywmqrmuoq .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#aywmqrmuoq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#aywmqrmuoq .gt_from_md > :first-child {
  margin-top: 0;
}

#aywmqrmuoq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#aywmqrmuoq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#aywmqrmuoq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#aywmqrmuoq .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#aywmqrmuoq .gt_row_group_first td {
  border-top-width: 2px;
}

#aywmqrmuoq .gt_row_group_first th {
  border-top-width: 2px;
}

#aywmqrmuoq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#aywmqrmuoq .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#aywmqrmuoq .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#aywmqrmuoq .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#aywmqrmuoq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#aywmqrmuoq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#aywmqrmuoq .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#aywmqrmuoq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#aywmqrmuoq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#aywmqrmuoq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#aywmqrmuoq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#aywmqrmuoq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#aywmqrmuoq .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#aywmqrmuoq .gt_left {
  text-align: left;
}

#aywmqrmuoq .gt_center {
  text-align: center;
}

#aywmqrmuoq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#aywmqrmuoq .gt_font_normal {
  font-weight: normal;
}

#aywmqrmuoq .gt_font_bold {
  font-weight: bold;
}

#aywmqrmuoq .gt_font_italic {
  font-style: italic;
}

#aywmqrmuoq .gt_super {
  font-size: 65%;
}

#aywmqrmuoq .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#aywmqrmuoq .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#aywmqrmuoq .gt_indent_1 {
  text-indent: 5px;
}

#aywmqrmuoq .gt_indent_2 {
  text-indent: 10px;
}

#aywmqrmuoq .gt_indent_3 {
  text-indent: 15px;
}

#aywmqrmuoq .gt_indent_4 {
  text-indent: 20px;
}

#aywmqrmuoq .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="8" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Percentage of Bills with Each Status, by Type</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Bill Type">Bill Type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Crossed Over">Crossed Over</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Dead/Failed">Dead/Failed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Introduced">Introduced</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Passed">Passed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Signed/Enacted">Signed/Enacted</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Vetoed">Vetoed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Total">Total</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Bill Type" class="gt_row gt_left">Drag Performance</td>
<td headers="Crossed Over" class="gt_row gt_right">15.8%</td>
<td headers="Dead/Failed" class="gt_row gt_right">28.9%</td>
<td headers="Introduced" class="gt_row gt_right">50.0%</td>
<td headers="Passed" class="gt_row gt_right">0.0%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">5.3%</td>
<td headers="Vetoed" class="gt_row gt_right">0.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Healthcare</td>
<td headers="Crossed Over" class="gt_row gt_right">4.4%</td>
<td headers="Dead/Failed" class="gt_row gt_right">37.1%</td>
<td headers="Introduced" class="gt_row gt_right">48.9%</td>
<td headers="Passed" class="gt_row gt_right">2.2%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">7.4%</td>
<td headers="Vetoed" class="gt_row gt_right">0.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">ID Updates</td>
<td headers="Crossed Over" class="gt_row gt_right">12.1%</td>
<td headers="Dead/Failed" class="gt_row gt_right">27.3%</td>
<td headers="Introduced" class="gt_row gt_right">45.5%</td>
<td headers="Passed" class="gt_row gt_right">0.0%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">15.2%</td>
<td headers="Vetoed" class="gt_row gt_right">0.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Nondiscrimination Protections</td>
<td headers="Crossed Over" class="gt_row gt_right">0.0%</td>
<td headers="Dead/Failed" class="gt_row gt_right">46.2%</td>
<td headers="Introduced" class="gt_row gt_right">46.2%</td>
<td headers="Passed" class="gt_row gt_right">7.7%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">0.0%</td>
<td headers="Vetoed" class="gt_row gt_right">0.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Other</td>
<td headers="Crossed Over" class="gt_row gt_right">10.3%</td>
<td headers="Dead/Failed" class="gt_row gt_right">33.3%</td>
<td headers="Introduced" class="gt_row gt_right">48.7%</td>
<td headers="Passed" class="gt_row gt_right">1.3%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">5.1%</td>
<td headers="Vetoed" class="gt_row gt_right">1.3%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Public Facilities</td>
<td headers="Crossed Over" class="gt_row gt_right">9.1%</td>
<td headers="Dead/Failed" class="gt_row gt_right">43.9%</td>
<td headers="Introduced" class="gt_row gt_right">33.3%</td>
<td headers="Passed" class="gt_row gt_right">3.0%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">10.6%</td>
<td headers="Vetoed" class="gt_row gt_right">0.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Religious Freedom</td>
<td headers="Crossed Over" class="gt_row gt_right">2.4%</td>
<td headers="Dead/Failed" class="gt_row gt_right">31.7%</td>
<td headers="Introduced" class="gt_row gt_right">53.7%</td>
<td headers="Passed" class="gt_row gt_right">2.4%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">9.8%</td>
<td headers="Vetoed" class="gt_row gt_right">0.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Schools / Education</td>
<td headers="Crossed Over" class="gt_row gt_right">7.8%</td>
<td headers="Dead/Failed" class="gt_row gt_right">41.2%</td>
<td headers="Introduced" class="gt_row gt_right">46.1%</td>
<td headers="Passed" class="gt_row gt_right">1.0%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">3.9%</td>
<td headers="Vetoed" class="gt_row gt_right">0.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Youth Athletics</td>
<td headers="Crossed Over" class="gt_row gt_right">7.8%</td>
<td headers="Dead/Failed" class="gt_row gt_right">23.9%</td>
<td headers="Introduced" class="gt_row gt_right">53.9%</td>
<td headers="Passed" class="gt_row gt_right">1.0%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">11.9%</td>
<td headers="Vetoed" class="gt_row gt_right">1.4%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Total</td>
<td headers="Crossed Over" class="gt_row gt_right">7.4%</td>
<td headers="Dead/Failed" class="gt_row gt_right">32.6%</td>
<td headers="Introduced" class="gt_row gt_right">49.2%</td>
<td headers="Passed" class="gt_row gt_right">1.6%</td>
<td headers="Signed/Enacted" class="gt_row gt_right">8.7%</td>
<td headers="Vetoed" class="gt_row gt_right">0.6%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
  </tbody>
  
  
</table>
</div>

And what percentage of each bill type had each status:

<div id="xfduougjbp" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#xfduougjbp table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#xfduougjbp thead, #xfduougjbp tbody, #xfduougjbp tfoot, #xfduougjbp tr, #xfduougjbp td, #xfduougjbp th {
  border-style: none;
}

#xfduougjbp p {
  margin: 0;
  padding: 0;
}

#xfduougjbp .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xfduougjbp .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#xfduougjbp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xfduougjbp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xfduougjbp .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xfduougjbp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xfduougjbp .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xfduougjbp .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xfduougjbp .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xfduougjbp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xfduougjbp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xfduougjbp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xfduougjbp .gt_spanner_row {
  border-bottom-style: hidden;
}

#xfduougjbp .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#xfduougjbp .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xfduougjbp .gt_from_md > :first-child {
  margin-top: 0;
}

#xfduougjbp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xfduougjbp .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xfduougjbp .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xfduougjbp .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xfduougjbp .gt_row_group_first td {
  border-top-width: 2px;
}

#xfduougjbp .gt_row_group_first th {
  border-top-width: 2px;
}

#xfduougjbp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xfduougjbp .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xfduougjbp .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xfduougjbp .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xfduougjbp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xfduougjbp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xfduougjbp .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#xfduougjbp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xfduougjbp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xfduougjbp .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xfduougjbp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xfduougjbp .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xfduougjbp .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xfduougjbp .gt_left {
  text-align: left;
}

#xfduougjbp .gt_center {
  text-align: center;
}

#xfduougjbp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xfduougjbp .gt_font_normal {
  font-weight: normal;
}

#xfduougjbp .gt_font_bold {
  font-weight: bold;
}

#xfduougjbp .gt_font_italic {
  font-style: italic;
}

#xfduougjbp .gt_super {
  font-size: 65%;
}

#xfduougjbp .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#xfduougjbp .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xfduougjbp .gt_indent_1 {
  text-indent: 5px;
}

#xfduougjbp .gt_indent_2 {
  text-indent: 10px;
}

#xfduougjbp .gt_indent_3 {
  text-indent: 15px;
}

#xfduougjbp .gt_indent_4 {
  text-indent: 20px;
}

#xfduougjbp .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="11" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Percentage of Bills of Each Type, by Status</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Status">Status</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Drag Performance">Drag Performance</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Healthcare">Healthcare</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="ID Updates">ID Updates</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Nondiscrimination Protections">Nondiscrimination Protections</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Other">Other</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Public Facilities">Public Facilities</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Religious Freedom">Religious Freedom</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Schools / Education">Schools / Education</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Youth Athletics">Youth Athletics</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Total">Total</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Status" class="gt_row gt_left">Crossed Over</td>
<td headers="Drag Performance" class="gt_row gt_right">9.1%</td>
<td headers="Healthcare" class="gt_row gt_right">15.2%</td>
<td headers="ID Updates" class="gt_row gt_right">6.1%</td>
<td headers="Nondiscrimination Protections" class="gt_row gt_right">0.0%</td>
<td headers="Other" class="gt_row gt_right">12.1%</td>
<td headers="Public Facilities" class="gt_row gt_right">9.1%</td>
<td headers="Religious Freedom" class="gt_row gt_right">1.5%</td>
<td headers="Schools / Education" class="gt_row gt_right">12.1%</td>
<td headers="Youth Athletics" class="gt_row gt_right">34.8%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Status" class="gt_row gt_left">Dead/Failed</td>
<td headers="Drag Performance" class="gt_row gt_right">3.8%</td>
<td headers="Healthcare" class="gt_row gt_right">29.2%</td>
<td headers="ID Updates" class="gt_row gt_right">3.1%</td>
<td headers="Nondiscrimination Protections" class="gt_row gt_right">2.1%</td>
<td headers="Other" class="gt_row gt_right">8.9%</td>
<td headers="Public Facilities" class="gt_row gt_right">10.0%</td>
<td headers="Religious Freedom" class="gt_row gt_right">4.5%</td>
<td headers="Schools / Education" class="gt_row gt_right">14.4%</td>
<td headers="Youth Athletics" class="gt_row gt_right">24.1%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Status" class="gt_row gt_left">Introduced</td>
<td headers="Drag Performance" class="gt_row gt_right">4.3%</td>
<td headers="Healthcare" class="gt_row gt_right">25.5%</td>
<td headers="ID Updates" class="gt_row gt_right">3.4%</td>
<td headers="Nondiscrimination Protections" class="gt_row gt_right">1.4%</td>
<td headers="Other" class="gt_row gt_right">8.7%</td>
<td headers="Public Facilities" class="gt_row gt_right">5.0%</td>
<td headers="Religious Freedom" class="gt_row gt_right">5.0%</td>
<td headers="Schools / Education" class="gt_row gt_right">10.7%</td>
<td headers="Youth Athletics" class="gt_row gt_right">36.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Status" class="gt_row gt_left">Passed</td>
<td headers="Drag Performance" class="gt_row gt_right">0.0%</td>
<td headers="Healthcare" class="gt_row gt_right">35.7%</td>
<td headers="ID Updates" class="gt_row gt_right">0.0%</td>
<td headers="Nondiscrimination Protections" class="gt_row gt_right">7.1%</td>
<td headers="Other" class="gt_row gt_right">7.1%</td>
<td headers="Public Facilities" class="gt_row gt_right">14.3%</td>
<td headers="Religious Freedom" class="gt_row gt_right">7.1%</td>
<td headers="Schools / Education" class="gt_row gt_right">7.1%</td>
<td headers="Youth Athletics" class="gt_row gt_right">21.4%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Status" class="gt_row gt_left">Signed/Enacted</td>
<td headers="Drag Performance" class="gt_row gt_right">2.6%</td>
<td headers="Healthcare" class="gt_row gt_right">21.8%</td>
<td headers="ID Updates" class="gt_row gt_right">6.4%</td>
<td headers="Nondiscrimination Protections" class="gt_row gt_right">0.0%</td>
<td headers="Other" class="gt_row gt_right">5.1%</td>
<td headers="Public Facilities" class="gt_row gt_right">9.0%</td>
<td headers="Religious Freedom" class="gt_row gt_right">5.1%</td>
<td headers="Schools / Education" class="gt_row gt_right">5.1%</td>
<td headers="Youth Athletics" class="gt_row gt_right">44.9%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Status" class="gt_row gt_left">Vetoed</td>
<td headers="Drag Performance" class="gt_row gt_right">0.0%</td>
<td headers="Healthcare" class="gt_row gt_right">0.0%</td>
<td headers="ID Updates" class="gt_row gt_right">0.0%</td>
<td headers="Nondiscrimination Protections" class="gt_row gt_right">0.0%</td>
<td headers="Other" class="gt_row gt_right">20.0%</td>
<td headers="Public Facilities" class="gt_row gt_right">0.0%</td>
<td headers="Religious Freedom" class="gt_row gt_right">0.0%</td>
<td headers="Schools / Education" class="gt_row gt_right">0.0%</td>
<td headers="Youth Athletics" class="gt_row gt_right">80.0%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
    <tr><td headers="Status" class="gt_row gt_left">Total</td>
<td headers="Drag Performance" class="gt_row gt_right">4.3%</td>
<td headers="Healthcare" class="gt_row gt_right">25.6%</td>
<td headers="ID Updates" class="gt_row gt_right">3.7%</td>
<td headers="Nondiscrimination Protections" class="gt_row gt_right">1.5%</td>
<td headers="Other" class="gt_row gt_right">8.7%</td>
<td headers="Public Facilities" class="gt_row gt_right">7.4%</td>
<td headers="Religious Freedom" class="gt_row gt_right">4.6%</td>
<td headers="Schools / Education" class="gt_row gt_right">11.4%</td>
<td headers="Youth Athletics" class="gt_row gt_right">32.8%</td>
<td headers="Total" class="gt_row gt_right">100.0%</td></tr>
  </tbody>
  
  
</table>
</div>

It seems like bills related to “ID updates” (i.e., preventing trans and
nonbinary people from having their IDs show their correct gender
identity), “public facilities” (often preventing trans people from using
the bathroom that fits their gender identity), and “youth athletics”
(i.e., preventing trans girls from competing on girls’ sports teams) are
most likely to be signed by their state’s governor and enacted into law
(after passing both legislative chambers).

However, of all the bills that were signed and enacted, most of them by
far were related to youth athletics (over double the number of bills
from any other category), followed by healthcare, suggesting that more
bills were proposed in those categories.

We seek to represent this data in a side-by-side bar chart. In order to
provide a more digestible, big-picture viewpoint, we classify the bills
by the type of gender-affirming care that is targeted: social transition
(excluding artistic performance, which Track Trans Legislation
categorizes under `Drag Performance`), healthcare/medical transition,
drag performances (noting that performing in drag and being transgender
are distinct, though sometimes overlapping, categories), and `Other`.

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-8-1.png)![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-8-2.png)

In order to better see proportions, we also show a stacked bar chart
that scales every *x*-axis group to 100%:

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-9-1.png)![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-9-2.png)

### Did the type of bill impact its likelihood of being passed and/or signed?

However, the observed trends could simply relate to the fact that the
largest *numbers* of bills nationwide were proposed in those categories.

In order to simplify the following charts and analysis, we combine
certain bill statuses into categories: bills that have crossed over,
passed, or were signed and enacted have a significant chance of
impacting the lives of trans and nonbinary people in that state, while
bills that were vetoed, died, or failed have no chance of impacting
lives. Bills listed simply as “introduced” may or may not have the
support to eventually pass, but since they are not currently impacting
the ability of trans/nonbinary people to access healthcare, play sports,
etc., we count them as “Not Passed”.

Now, we want to see a breakdown of the number and percentages of each
type of bill that did and didn’t pass.

<div id="bhowzfsvux" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#bhowzfsvux table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#bhowzfsvux thead, #bhowzfsvux tbody, #bhowzfsvux tfoot, #bhowzfsvux tr, #bhowzfsvux td, #bhowzfsvux th {
  border-style: none;
}

#bhowzfsvux p {
  margin: 0;
  padding: 0;
}

#bhowzfsvux .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#bhowzfsvux .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#bhowzfsvux .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bhowzfsvux .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bhowzfsvux .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bhowzfsvux .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bhowzfsvux .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bhowzfsvux .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#bhowzfsvux .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#bhowzfsvux .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#bhowzfsvux .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#bhowzfsvux .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#bhowzfsvux .gt_spanner_row {
  border-bottom-style: hidden;
}

#bhowzfsvux .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#bhowzfsvux .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#bhowzfsvux .gt_from_md > :first-child {
  margin-top: 0;
}

#bhowzfsvux .gt_from_md > :last-child {
  margin-bottom: 0;
}

#bhowzfsvux .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#bhowzfsvux .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#bhowzfsvux .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#bhowzfsvux .gt_row_group_first td {
  border-top-width: 2px;
}

#bhowzfsvux .gt_row_group_first th {
  border-top-width: 2px;
}

#bhowzfsvux .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bhowzfsvux .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#bhowzfsvux .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#bhowzfsvux .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bhowzfsvux .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bhowzfsvux .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#bhowzfsvux .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#bhowzfsvux .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#bhowzfsvux .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bhowzfsvux .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bhowzfsvux .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bhowzfsvux .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bhowzfsvux .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bhowzfsvux .gt_left {
  text-align: left;
}

#bhowzfsvux .gt_center {
  text-align: center;
}

#bhowzfsvux .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bhowzfsvux .gt_font_normal {
  font-weight: normal;
}

#bhowzfsvux .gt_font_bold {
  font-weight: bold;
}

#bhowzfsvux .gt_font_italic {
  font-style: italic;
}

#bhowzfsvux .gt_super {
  font-size: 65%;
}

#bhowzfsvux .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#bhowzfsvux .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#bhowzfsvux .gt_indent_1 {
  text-indent: 5px;
}

#bhowzfsvux .gt_indent_2 {
  text-indent: 10px;
}

#bhowzfsvux .gt_indent_3 {
  text-indent: 15px;
}

#bhowzfsvux .gt_indent_4 {
  text-indent: 20px;
}

#bhowzfsvux .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="4" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Number of Bills Passed by Bill Type</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Bill Type">Bill Type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Not Passed">Not Passed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Passed">Passed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Total">Total</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Bill Type" class="gt_row gt_left">Drag</td>
<td headers="Not Passed" class="gt_row gt_right">30</td>
<td headers="Passed" class="gt_row gt_right">8</td>
<td headers="Total" class="gt_row gt_right">38</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Medical</td>
<td headers="Not Passed" class="gt_row gt_right">197</td>
<td headers="Passed" class="gt_row gt_right">32</td>
<td headers="Total" class="gt_row gt_right">229</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Other</td>
<td headers="Not Passed" class="gt_row gt_right">65</td>
<td headers="Passed" class="gt_row gt_right">13</td>
<td headers="Total" class="gt_row gt_right">78</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Social</td>
<td headers="Not Passed" class="gt_row gt_right">443</td>
<td headers="Passed" class="gt_row gt_right">105</td>
<td headers="Total" class="gt_row gt_right">548</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Total</td>
<td headers="Not Passed" class="gt_row gt_right">735</td>
<td headers="Passed" class="gt_row gt_right">158</td>
<td headers="Total" class="gt_row gt_right">893</td></tr>
  </tbody>
  
  
</table>
</div>
<div id="lpdfybbihi" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#lpdfybbihi table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#lpdfybbihi thead, #lpdfybbihi tbody, #lpdfybbihi tfoot, #lpdfybbihi tr, #lpdfybbihi td, #lpdfybbihi th {
  border-style: none;
}

#lpdfybbihi p {
  margin: 0;
  padding: 0;
}

#lpdfybbihi .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#lpdfybbihi .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#lpdfybbihi .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#lpdfybbihi .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#lpdfybbihi .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#lpdfybbihi .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#lpdfybbihi .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#lpdfybbihi .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#lpdfybbihi .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#lpdfybbihi .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#lpdfybbihi .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#lpdfybbihi .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#lpdfybbihi .gt_spanner_row {
  border-bottom-style: hidden;
}

#lpdfybbihi .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#lpdfybbihi .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#lpdfybbihi .gt_from_md > :first-child {
  margin-top: 0;
}

#lpdfybbihi .gt_from_md > :last-child {
  margin-bottom: 0;
}

#lpdfybbihi .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#lpdfybbihi .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#lpdfybbihi .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#lpdfybbihi .gt_row_group_first td {
  border-top-width: 2px;
}

#lpdfybbihi .gt_row_group_first th {
  border-top-width: 2px;
}

#lpdfybbihi .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#lpdfybbihi .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#lpdfybbihi .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#lpdfybbihi .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#lpdfybbihi .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#lpdfybbihi .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#lpdfybbihi .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#lpdfybbihi .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#lpdfybbihi .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#lpdfybbihi .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#lpdfybbihi .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#lpdfybbihi .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#lpdfybbihi .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#lpdfybbihi .gt_left {
  text-align: left;
}

#lpdfybbihi .gt_center {
  text-align: center;
}

#lpdfybbihi .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#lpdfybbihi .gt_font_normal {
  font-weight: normal;
}

#lpdfybbihi .gt_font_bold {
  font-weight: bold;
}

#lpdfybbihi .gt_font_italic {
  font-style: italic;
}

#lpdfybbihi .gt_super {
  font-size: 65%;
}

#lpdfybbihi .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#lpdfybbihi .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#lpdfybbihi .gt_indent_1 {
  text-indent: 5px;
}

#lpdfybbihi .gt_indent_2 {
  text-indent: 10px;
}

#lpdfybbihi .gt_indent_3 {
  text-indent: 15px;
}

#lpdfybbihi .gt_indent_4 {
  text-indent: 20px;
}

#lpdfybbihi .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Percentage of Bills Passed by Bill Type</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Bill Type">Bill Type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Not Passed">Not Passed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Passed">Passed</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Bill Type" class="gt_row gt_left">Drag</td>
<td headers="Not Passed" class="gt_row gt_right">78.9%</td>
<td headers="Passed" class="gt_row gt_right">21.1%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Medical</td>
<td headers="Not Passed" class="gt_row gt_right">86.0%</td>
<td headers="Passed" class="gt_row gt_right">14.0%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Other</td>
<td headers="Not Passed" class="gt_row gt_right">83.3%</td>
<td headers="Passed" class="gt_row gt_right">16.7%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Social</td>
<td headers="Not Passed" class="gt_row gt_right">80.8%</td>
<td headers="Passed" class="gt_row gt_right">19.2%</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Total</td>
<td headers="Not Passed" class="gt_row gt_right">82.3%</td>
<td headers="Passed" class="gt_row gt_right">17.7%</td></tr>
  </tbody>
  
  
</table>
</div>

We wish to plot the number and proportion of each type of bill that was
passed.

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-13-1.png)

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-14-1.png)

From this chart, it appears that bills restricting hormone therapy,
puberty blockers, and other medical interventions are actually somewhat
less likely to pass than other types of bills, and that while the number
of anti-drag bills is substantially smaller than the number of other
types of bills, they are somewhat more likely to pass.

Importantly, fewer than 25% of any type of bill since 2018 has passed.
What happens when we break down the bills by year?

## Is 2023 the Year of Transphobia?

A common claim in the news media, and a common feeling among trans and
nonbinary folks, is that 2023 is by far the worst recent year for
anti-trans legislation. Let’s investigate the following questions:

1.  What total number of anti-trans bills were proposed each year from
    2018 to 2023?
2.  What total number of anti-trans bills were *passed* each of these
    years? In 2023, since the session is not over in many states, we run
    the analysis in two ways: including both bills that crossed over and
    bills that were signed/enacted, and only considering bills which
    were signed/enacted.
3.  What types of anti-trans bills were proposed more often in 2023 than
    in previous years?
4.  What types of anti-trans bills were *passed* more often in 2023?
5.  What states introduced/passed the majority of anti-trans bills in
    2023, and are these the same states as in previous years?

We start by creating a data frame that shows only the bills passed,
crossed over (hence passed by at least one chamber of the legislature
and not yet dead), and/or signed and enacted between 2021 and 2023, as
well as in each year and in the years preceding 2023.

<div id="ssgkxcrimn" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#ssgkxcrimn table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#ssgkxcrimn thead, #ssgkxcrimn tbody, #ssgkxcrimn tfoot, #ssgkxcrimn tr, #ssgkxcrimn td, #ssgkxcrimn th {
  border-style: none;
}

#ssgkxcrimn p {
  margin: 0;
  padding: 0;
}

#ssgkxcrimn .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ssgkxcrimn .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#ssgkxcrimn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ssgkxcrimn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ssgkxcrimn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ssgkxcrimn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ssgkxcrimn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ssgkxcrimn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ssgkxcrimn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ssgkxcrimn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ssgkxcrimn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ssgkxcrimn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ssgkxcrimn .gt_spanner_row {
  border-bottom-style: hidden;
}

#ssgkxcrimn .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#ssgkxcrimn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ssgkxcrimn .gt_from_md > :first-child {
  margin-top: 0;
}

#ssgkxcrimn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ssgkxcrimn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ssgkxcrimn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#ssgkxcrimn .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#ssgkxcrimn .gt_row_group_first td {
  border-top-width: 2px;
}

#ssgkxcrimn .gt_row_group_first th {
  border-top-width: 2px;
}

#ssgkxcrimn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ssgkxcrimn .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#ssgkxcrimn .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#ssgkxcrimn .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ssgkxcrimn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ssgkxcrimn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ssgkxcrimn .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#ssgkxcrimn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ssgkxcrimn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ssgkxcrimn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ssgkxcrimn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ssgkxcrimn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ssgkxcrimn .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ssgkxcrimn .gt_left {
  text-align: left;
}

#ssgkxcrimn .gt_center {
  text-align: center;
}

#ssgkxcrimn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ssgkxcrimn .gt_font_normal {
  font-weight: normal;
}

#ssgkxcrimn .gt_font_bold {
  font-weight: bold;
}

#ssgkxcrimn .gt_font_italic {
  font-style: italic;
}

#ssgkxcrimn .gt_super {
  font-size: 65%;
}

#ssgkxcrimn .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#ssgkxcrimn .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#ssgkxcrimn .gt_indent_1 {
  text-indent: 5px;
}

#ssgkxcrimn .gt_indent_2 {
  text-indent: 10px;
}

#ssgkxcrimn .gt_indent_3 {
  text-indent: 15px;
}

#ssgkxcrimn .gt_indent_4 {
  text-indent: 20px;
}

#ssgkxcrimn .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="9" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Passed Bills by Year and Type</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Bill Type">Bill Type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="2017">2017</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="2018">2018</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="2019">2019</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="2020">2020</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="2021">2021</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="2022">2022</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="2023">2023</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Total">Total</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Bill Type" class="gt_row gt_left">Drag Performance</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">0</td>
<td headers="2019" class="gt_row gt_right">0</td>
<td headers="2020" class="gt_row gt_right">0</td>
<td headers="2021" class="gt_row gt_right">0</td>
<td headers="2022" class="gt_row gt_right">0</td>
<td headers="2023" class="gt_row gt_right">8</td>
<td headers="Total" class="gt_row gt_right">8</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Healthcare</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">0</td>
<td headers="2019" class="gt_row gt_right">0</td>
<td headers="2020" class="gt_row gt_right">1</td>
<td headers="2021" class="gt_row gt_right">4</td>
<td headers="2022" class="gt_row gt_right">4</td>
<td headers="2023" class="gt_row gt_right">23</td>
<td headers="Total" class="gt_row gt_right">32</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">ID Updates</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">0</td>
<td headers="2019" class="gt_row gt_right">0</td>
<td headers="2020" class="gt_row gt_right">1</td>
<td headers="2021" class="gt_row gt_right">1</td>
<td headers="2022" class="gt_row gt_right">1</td>
<td headers="2023" class="gt_row gt_right">6</td>
<td headers="Total" class="gt_row gt_right">9</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Nondiscrimination Protections</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">0</td>
<td headers="2019" class="gt_row gt_right">0</td>
<td headers="2020" class="gt_row gt_right">0</td>
<td headers="2021" class="gt_row gt_right">0</td>
<td headers="2022" class="gt_row gt_right">0</td>
<td headers="2023" class="gt_row gt_right">1</td>
<td headers="Total" class="gt_row gt_right">1</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Other</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">1</td>
<td headers="2019" class="gt_row gt_right">1</td>
<td headers="2020" class="gt_row gt_right">0</td>
<td headers="2021" class="gt_row gt_right">0</td>
<td headers="2022" class="gt_row gt_right">2</td>
<td headers="2023" class="gt_row gt_right">9</td>
<td headers="Total" class="gt_row gt_right">13</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Public Facilities</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">0</td>
<td headers="2019" class="gt_row gt_right">2</td>
<td headers="2020" class="gt_row gt_right">0</td>
<td headers="2021" class="gt_row gt_right">0</td>
<td headers="2022" class="gt_row gt_right">3</td>
<td headers="2023" class="gt_row gt_right">10</td>
<td headers="Total" class="gt_row gt_right">15</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Religious Freedom</td>
<td headers="2017" class="gt_row gt_right">1</td>
<td headers="2018" class="gt_row gt_right">1</td>
<td headers="2019" class="gt_row gt_right">0</td>
<td headers="2020" class="gt_row gt_right">3</td>
<td headers="2021" class="gt_row gt_right">1</td>
<td headers="2022" class="gt_row gt_right">0</td>
<td headers="2023" class="gt_row gt_right">0</td>
<td headers="Total" class="gt_row gt_right">6</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Schools / Education</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">0</td>
<td headers="2019" class="gt_row gt_right">0</td>
<td headers="2020" class="gt_row gt_right">0</td>
<td headers="2021" class="gt_row gt_right">0</td>
<td headers="2022" class="gt_row gt_right">4</td>
<td headers="2023" class="gt_row gt_right">9</td>
<td headers="Total" class="gt_row gt_right">13</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Youth Athletics</td>
<td headers="2017" class="gt_row gt_right">0</td>
<td headers="2018" class="gt_row gt_right">0</td>
<td headers="2019" class="gt_row gt_right">0</td>
<td headers="2020" class="gt_row gt_right">3</td>
<td headers="2021" class="gt_row gt_right">27</td>
<td headers="2022" class="gt_row gt_right">21</td>
<td headers="2023" class="gt_row gt_right">10</td>
<td headers="Total" class="gt_row gt_right">61</td></tr>
    <tr><td headers="Bill Type" class="gt_row gt_left">Total</td>
<td headers="2017" class="gt_row gt_right">1</td>
<td headers="2018" class="gt_row gt_right">2</td>
<td headers="2019" class="gt_row gt_right">3</td>
<td headers="2020" class="gt_row gt_right">8</td>
<td headers="2021" class="gt_row gt_right">33</td>
<td headers="2022" class="gt_row gt_right">35</td>
<td headers="2023" class="gt_row gt_right">76</td>
<td headers="Total" class="gt_row gt_right">158</td></tr>
  </tbody>
  
  
</table>
</div>

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-15-1.png)

Note that these bills **only go through April 21, 2023**. To emphasize
the change in the number of bills that have a chance of passing or have
already been passed over time, we combine all the years 2017-2022 and
compare them to 2023.

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-16-1.png)![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-16-2.png)

It appears that 2023 will, indeed, have many anti-trans bills pass than
all previous years since 2018 combined (again, recall that the 2023 data
in this analysis only goes through April 21, 2023). What about the
*likelihood* of any particular anti-trans bill to pass in 2023 compared
to previous years?

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-17-1.png)

There appears to be a slight increase in the proportion of bills of all
types that passed in 2023 compared to 2018-22. This difference becomes
even more pronounced when we separate 2022:

<div id="cgcmnkhtvx" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#cgcmnkhtvx table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#cgcmnkhtvx thead, #cgcmnkhtvx tbody, #cgcmnkhtvx tfoot, #cgcmnkhtvx tr, #cgcmnkhtvx td, #cgcmnkhtvx th {
  border-style: none;
}

#cgcmnkhtvx p {
  margin: 0;
  padding: 0;
}

#cgcmnkhtvx .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#cgcmnkhtvx .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#cgcmnkhtvx .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cgcmnkhtvx .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cgcmnkhtvx .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cgcmnkhtvx .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cgcmnkhtvx .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cgcmnkhtvx .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#cgcmnkhtvx .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#cgcmnkhtvx .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#cgcmnkhtvx .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#cgcmnkhtvx .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#cgcmnkhtvx .gt_spanner_row {
  border-bottom-style: hidden;
}

#cgcmnkhtvx .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#cgcmnkhtvx .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#cgcmnkhtvx .gt_from_md > :first-child {
  margin-top: 0;
}

#cgcmnkhtvx .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cgcmnkhtvx .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#cgcmnkhtvx .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#cgcmnkhtvx .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#cgcmnkhtvx .gt_row_group_first td {
  border-top-width: 2px;
}

#cgcmnkhtvx .gt_row_group_first th {
  border-top-width: 2px;
}

#cgcmnkhtvx .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cgcmnkhtvx .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#cgcmnkhtvx .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#cgcmnkhtvx .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cgcmnkhtvx .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cgcmnkhtvx .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#cgcmnkhtvx .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#cgcmnkhtvx .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#cgcmnkhtvx .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cgcmnkhtvx .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cgcmnkhtvx .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cgcmnkhtvx .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cgcmnkhtvx .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#cgcmnkhtvx .gt_left {
  text-align: left;
}

#cgcmnkhtvx .gt_center {
  text-align: center;
}

#cgcmnkhtvx .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cgcmnkhtvx .gt_font_normal {
  font-weight: normal;
}

#cgcmnkhtvx .gt_font_bold {
  font-weight: bold;
}

#cgcmnkhtvx .gt_font_italic {
  font-style: italic;
}

#cgcmnkhtvx .gt_super {
  font-size: 65%;
}

#cgcmnkhtvx .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#cgcmnkhtvx .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#cgcmnkhtvx .gt_indent_1 {
  text-indent: 5px;
}

#cgcmnkhtvx .gt_indent_2 {
  text-indent: 10px;
}

#cgcmnkhtvx .gt_indent_3 {
  text-indent: 15px;
}

#cgcmnkhtvx .gt_indent_4 {
  text-indent: 20px;
}

#cgcmnkhtvx .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Bills Passed Before and After 2022</td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="after_21">after_21</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Not Passed">Not Passed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Passed">Passed</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="after_21" class="gt_row gt_center">2022-23</td>
<td headers="Not Passed" class="gt_row gt_right">78.2%</td>
<td headers="Passed" class="gt_row gt_right">21.8%</td></tr>
    <tr><td headers="after_21" class="gt_row gt_center">2018-21</td>
<td headers="Not Passed" class="gt_row gt_right">84.7%</td>
<td headers="Passed" class="gt_row gt_right">15.3%</td></tr>
    <tr><td headers="after_21" class="gt_row gt_center">Total</td>
<td headers="Not Passed" class="gt_row gt_right">80.1%</td>
<td headers="Passed" class="gt_row gt_right">19.9%</td></tr>
  </tbody>
  
  
</table>
</div>

![](anti-trans-bills-analysis_files/figure-markdown_strict/unnamed-chunk-18-1.png)

# Directions for Future Work

## Bayesian Analysis

What do Bayesian analyses tell us about the trends seen in the
exploratory data analysis above?

## Textual Analysis of Template Bills & Proposed State Bills

There is substantial evidence (Pauly 2023; Schipper 2022; Contreras
2023) that “template bills” containing text for banning aspects of
gender-affirming care and social transition were distributed at
workshops hosted by far-right organizations such as the Heritage
Foundation and Christian Family Policy Alliance over the past several
years. For example, throughout 2019, the Heritage Foundation hosted a
series of workshops on the “medical risks” of gender-affirming care for
trans youth (Harvard Law Review 2021).

Given the text of template bills such as that found in Appendix II of
(Theriot and Connelly, n.d.), how many of the bills proposed across the
U.S. since 2019 have significant textual similarity to template bills
authored by conservative organizations? Which template bills, and which
organizations, have had the most influence in the text of bills that
were proposed? Passed? In which states?

## Do Anti-Trans Bills Reflect the Will of Voters?

In states where anti-trans bills are passed, is the percentage of voters
(eligible/likely voters, residents, etc.) in a state that support such
bills a plurality? A majority? Greater or less than the number of
legislature members who voted for the anti-trans bill?

How does the number of anti-trans bills passed in a state correlate to
how gerrymandered the state is (using a measure such as Markov chain
Monte Carlo (Metric Geometry & Gerrymandering Group, n.d.))?

## State Prioritization of Anti-Trans Bills

Are most anti-trans bills passed during the beginning of legislative
sessions, indicating that such bills are a high priority for the state
legislature?

In order to extract information on state legislature convening and
adjourning dates, we download the schedule of state legislature meeting
dates from the [National Conference of State
Legislatures](https://documents.ncsl.org/wwwncsl/About-State-Legislatures/2023_session_calendar_1.pdf)
website, then use the [Tabula tool](https://tabula.technology/) to
extract the data into a .csv file, making some manual edits. Finally, we
load the .csv file into RStudio.

    ## Rows: 56 Columns: 3
    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr (3): State, Convene, Adjourn
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

## Impact of Anti-Trans Bills on Trans and Nonbinary Mental Health

The 2022 Trevor Project National Survey on LGBTQ Youth Mental Health
(The Trevor Project 2022) found that 59% of young trans men and 48% of
young trans women had considered suicide in the past year, while 22% of
trans boys and 12% of trans girls had attempted suicide. The same survey
found that 93% of trans and nonbinary youth said they had worried about
legislation denying trans people access to gender-affirming healthcare.

Is the number of Google searches or Twitter posts related to anxiety,
depression, and/or suicidality (“\#distress”) among trans and nonbinary
folks higher in 2023 than in previous years?

Is the amount of \#distress correlated to whether a bill has just
passed? To whether the bill impacts social or medical transition, drag
performance, or “Other”?

How does the amount of \#distress in states that have not passed
anti-trans bills compare to states in which an anti-trans bill has been
passed in the past year? The past two years?

## Queer and Trans Resistance

How does the number of posts related to organizing protests, whether
online or in-person, on Twitter after the passage of an anti-trans bill
in a particular state compare to the number immediately before the
passage of that bill?

How does the number of out transgender and nonbinary people elected to
public office, featured in the most widely consumed media outlets,
generally being visible…related to the number of bills proposed/passed?
Possible source: [LGBTQ+ Victory Fund](https://victoryfund.org/) for
officeholders

ACLU of Missouri. 2023. “Advocates Sue to Block Missouri Attorney
General’s Anti-Transgender Rule Restricting Gender-Affirming Care.”
<https://www.aclu-mo.org/en/news/advocates-sue-block-missouri-attorney-generals-anti-transgender-rule-restricting-gender>.

American Civil Liberties Union. 2018. “Past Legislation Affecting LGBT
Rights Across the Country (2018).”
<https://www.aclu.org/past-legislation-affecting-lgbt-rights-across-country-2018>.

———. 2019. “Past Legislation Affecting LGBT Rights Across Country 2019.”
<https://www.aclu.org/past-legislation-affecting-lgbt-rights-across-country-2019>.

———. 2020. “Past Legislation Affecting LGBT Rights Across the Country
2020.”
<https://www.aclu.org/past-legislation-affecting-lgbt-rights-across-country-2020>.

Bauer, Sydney. 2020. “The New Anti-Trans Culture War Hiding in Plain
Sight.” *The New Republic*, February.
<https://newrepublic.com/article/156539/new-anti-trans-culture-war-hiding-plain-sight>.

Contreras, Russell. 2023. “The Forces Behind Anti-Trans Bills Across the
U.S.” <https://www.axios.com/2023/03/31/anti-trans-bills-2023-america>.

González, Oriana. 2023. “What Is the State of Gender-Affirming Care in
America.”
<https://www.axios.com/2023/03/03/gender-affirming-care-trans-youth-us>.

Harvard Law Review. 2021. “Outlawing Trans Youth: State Legislatures and
the Battle over Gender-Affirming Healthcare for Minors.” *Harvard Law
Review* 134 (6).
<https://harvardlawreview.org/print/vol-134/outlawing-trans-youth-state-legislatures-and-the-battle-over-gender-affirming-healthcare-for-minors/>.

Katy Steinmetz. 2014. “The Transgender Tipping Point.”
<https://time.com/135480/transgender-tipping-point/>.

Metric Geometry & Gerrymandering Group. n.d. “GerryChain.”
<https://mggg.github.io/GerryChain/>.

Olson, Kristina R., Aidan C. Key, and Nicholas R. Eaton. 2015. “Gender
cognition in transgender children.” *Psychological Science* 26 (4):
467–74. <https://doi.org/10.1177/0956797614568156>.

Pauly, Madison. 2023. “Inside the Secret Working Group That Helped Push
Anti-Trans Laws Across the Country.”
<https://www.motherjones.com/politics/2023/03/anti-trans-transgender-health-care-ban-legislation-bill-minors-children-lgbtq/>.

Rafferty, Jason, COMMITTEE ON PSYCHOSOCIAL ASPECTS OF CHILD AND FAMILY
HEALTH, COMMITTEE ON ADOLESCENCE, GAY, BISEXUAL, AND TRANSGENDER HEALTH
AND WELLNESS SECTION ON LESBIAN, Michael Yogman, Rebecca Baum, Thresia
B. Gambon, et al. 2018. “Ensuring Comprehensive Care and Support for
Transgender and Gender-Diverse Children and Adolescents.” *Pediatrics*
142 (4): e20182162. <https://doi.org/10.1542/peds.2018-2162>.

Schipper, Kellie. 2022. “Conservative Political Tactics to Obstruct
Gender-Affirming Healthcare for Transgender Youth in the USA.” PhD
thesis.

The Trevor Project. 2022. “2022 National Survey on LGBTQ Youth Mental
Health.”
<https://www.thetrevorproject.org/survey-2022/assets/static/trevor01_2022survey_final.pdf>.

Theriot, Kevin H, and Ken Connelly. n.d. “Free to Do No Harm: Conscience
Protections for Healthcare Professionals.” *Arizona State Law Journal*
49 (0549): 549–605.

Trans Legislation Tracker. n.d. “Trans Legislation Tracker: 2022
Anti-Transgender Bills.” <https://translegislation.com/bills/2022>.
