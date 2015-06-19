<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--

THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL LANTANA CONSULTING GROUP LLC, OR ANY OF THEIR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
Schematron generated from Trifolia on 4/22/2015
-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron">
	<sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc"/>
	<sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
	<sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
	<sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc"/>
	<sch:ns prefix="cda" uri="urn:hl7-org:v3"/>
	<sch:phase id="errors">
		<sch:active pattern="p-CANCER-DOCUMENT-TEMPLATE"/>
		<sch:active pattern="p-DOCUMENT-TEMPLATE"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-CLOSEDTEMPLATE"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors"/>
	</sch:phase>
	<sch:phase id="warnings">
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-warnings"/>
	</sch:phase>
	<sch:pattern id="p-CANCER-DOCUMENT-TEMPLATE">cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']</sch:pattern>
	<sch:pattern id="p-DOCUMENT-TEMPLATE">
		<sch:rule id="r-errors-DOC-abstract" abstract="true">
			<sch:assert id="a-IG-1169-DOC" test="cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09'] or cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']">The document must contain at least 1 of the document level templates for this schematron to be applicable.</sch:assert>
		</sch:rule>
		<sch:rule id="r-errors-DOC" context="cda:ClinicalDocument">
			<sch:extends rule="r-errors-DOC-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors-abstract" abstract="true">
			<sch:assert id="a-81-7157" test="count(cda:given) &gt; 0">SHALL contain at least one [1..*] given (CONF:81-7157).</sch:assert>
			<sch:assert id="a-81-7163" test="count(cda:given)=1 or (count(cda:given) &gt; 1 and string-length(cda:given[2]) &gt; 0)">The second occurrence of given (given2) if provided, SHALL include middle name or middle initial (CONF:81-7163).</sch:assert>
			<sch:assert id="a-81-7159" test="count(cda:family)=1">SHALL contain exactly one [1..1] family (CONF:81-7159).</sch:assert>
			<sch:assert id="a-81-7278-c" test=".">*SHALL NOT* have mixed content except for white space (CONF:81-7278).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract" abstract="true">
			<sch:assert id="a-81-7291-c" test="count(cda:streetAddressLine) &gt; 0 and count(cda:streetAddressLine) &lt; 5">SHALL contain [0..0] streetAddressLine (CONF:81-7291).</sch:assert>
			<sch:assert id="a-81-7292" test="count(cda:city)=1">SHALL contain exactly one [1..1] city (CONF:81-7292).</sch:assert>
			<sch:assert id="a-81-7296-c" test="not(tested)">*SHALL NOT* have mixed content except for white space (CONF:81-7296).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors-abstract" abstract="true">
			<sch:assert id="a-81-7758" test="@classCode='SDLOC'">SHALL contain exactly one [1..1] @classCode="SDLOC" (CodeSystem: RoleCode urn:oid:2.16.840.1.113883.5.111 STATIC) (CONF:81-7758).</sch:assert>
			<sch:assert id="a-81-7763" test="not(cda:playingEntity) or cda:playingEntity[@classCode='PLC']">The playingEntity, if present, SHALL contain exactly one [1..1] @classCode="PLC" (CodeSystem: EntityClass urn:oid:2.16.840.1.113883.5.41 STATIC) (CONF:81-7763).</sch:assert>
			<sch:assert id="a-81-16850" test="count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.20275']/voc:code/@value])=1">SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation urn:oid:2.16.840.1.113883.1.11.20275 STATIC (CONF:81-16850).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors-abstract"/>
			<sch:assert id="a-81-7635" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32'])=1">SHALL contain exactly one [1..1] templateId (CONF:81-7635) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.32" (CONF:81-10524).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors-abstract" abstract="true">
			<sch:assert id="a-81-7713" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:81-7713).</sch:assert>
			<sch:assert id="a-81-14757" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:81-14757).</sch:assert>
			<sch:assert id="a-81-14758" test="cda:code[@code='51848-0']">This code SHALL contain exactly one [1..1] @code="51848-0" Assessments (CONF:81-14758).</sch:assert>
			<sch:assert id="a-81-26472" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26472).</sch:assert>
			<sch:assert id="a-81-16774" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:81-16774).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors-abstract"/>
			<sch:assert id="a-81-7711" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8'])=1">SHALL contain exactly one [1..1] templateId (CONF:81-7711) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.8" (CONF:81-10382).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract" abstract="true">
			<sch:assert id="a-81-9368" test="count(cda:name)=1">SHALL contain exactly one [1..1] name (CONF:81-9368).</sch:assert>
			<sch:assert id="a-81-9371-c" test="(count(cda:name/cda:family)=1 and count(cda:name/cda:given) &gt; 0) or (count(cda:name/*)=0 and string-length(cda:name)!=0)">The content of name SHALL be either a conformant Patient Name (PTN.US.FIELDED), or a string (CONF:81-9371). The string SHALL NOT contain name parts (CONF:81-9372).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract" abstract="true">
			<sch:assert id="a-81-10127-c" test="string-length(@value)&gt;=8">SHALL be precise to the day (CONF:81-10127).</sch:assert>
			<sch:assert id="a-81-10128-c" test="string-length(@value)&gt;=12">SHOULD be precise to the minute (CONF:81-10128).</sch:assert>
			<sch:assert id="a-81-10129-c" test="string-length(@value)&gt;=14">MAY be precise to the second (CONF:81-10129).</sch:assert>
			<sch:assert id="a-81-10130-c" test="string-length(@value)&lt;10 or (string-length(@value)&gt;=10 and (contains(@value,'+') or contains(@value,'-')))">If more precise than day, SHOULD include time-zone offset (CONF:81-10130).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7936" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7936) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.17" (CONF:1098-10449). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32494).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-14819" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-14819).</sch:assert>
			<sch:assert id="a-1098-14820" test="cda:code[@code='29762-2']">This code SHALL contain exactly one [1..1] @code="29762-2" Social History (CONF:1098-14820).</sch:assert>
			<sch:assert id="a-1098-7938" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7938).</sch:assert>
			<sch:assert id="a-1098-7939" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7939).</sch:assert>
			<sch:assert id="a-1098-30814" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30814).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7499" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7499) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.16" (CONF:1098-10504). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32498).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7496" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7496).</sch:assert>
			<sch:assert id="a-1098-7497" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.18']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt urn:oid:2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:1098-7497).</sch:assert>
			<sch:assert id="a-1098-7500" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7500).</sch:assert>
			<sch:assert id="a-1098-7507" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7507).</sch:assert>
			<sch:assert id="a-1098-32360" test="count(cda:statusCode[@code])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ActStatus urn:oid:2.16.840.1.113883.1.11.159331 DYNAMIC (CONF:1098-32360).</sch:assert>
			<sch:assert id="a-1098-7508-c" test="count(cda:effectiveTime[@xsi:type='IVL_TS']) = 1">The substance administration effectiveTime field can repeat, in order to represent varying levels of complex dosing. effectiveTime can be used to represent the duration of administration (e.g., "10 days"), the frequency of administration (e.g., "every 8 hours"), and more. Here, we require that there SHALL be an effectiveTime documentation of the duration (or single-administration timestamp), and that there SHOULD be an effectiveTime documentation of the frequency. Other timing nuances, supported by the base CDA R2 standard, may also be included.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7508) such that it
Note: This effectiveTime represents either the medication duration (i.e., the time the medication was started and stopped) or the single-administration timestamp.</sch:assert>
			<sch:assert id="a-1098-7516" test="count(cda:doseQuantity)=1">SHALL contain exactly one [1..1] doseQuantity (CONF:1098-7516).</sch:assert>
			<sch:assert id="a-1098-7525" test="not(cda:rateQuantity) or cda:rateQuantity[@unit]">The rateQuantity, if present, SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7525).</sch:assert>
			<sch:assert id="a-1098-7520" test="count(cda:consumable)=1">SHALL contain exactly one [1..1] consumable (CONF:1098-7520).</sch:assert>
			<sch:assert id="a-1098-16085" test="cda:consumable[count(cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']])=1]">This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-16085).</sch:assert>
			<sch:assert id="a-1098-31882" test="not(cda:precondition) or cda:precondition[@typeCode='PRCN']">The precondition, if present, SHALL contain exactly one [1..1] @typeCode="PRCN" (CONF:1098-31882).</sch:assert>
			<sch:assert id="a-1098-31883" test="not(cda:precondition) or cda:precondition[count(cda:criterion[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.25' and @extension = '2014-06-09']])=1]">The precondition, if present, SHALL contain exactly one [1..1] Precondition for Substance Administration (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09) (CONF:1098-31883).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]/cda:effectiveTime[@xsi:type='IVL_TS']">
			<sch:assert id="a-1098-32890-branch-28494-c" test="(cda:low or @value) and not(cda:low and @value)">This effectiveTime SHALL contain either a low or a @value but not both (CONF:1098-32890).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7791" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7791) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1" (CONF:1098-10432). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32500).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15385" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15385).</sch:assert>
			<sch:assert id="a-1098-15386" test="cda:code[@code='10160-0']">This code SHALL contain exactly one [1..1] @code="10160-0" History of medication use (CONF:1098-15386).</sch:assert>
			<sch:assert id="a-1098-7793-c" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7793).</sch:assert>
			<sch:assert id="a-1098-7794" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7794).</sch:assert>
			<sch:assert id="a-1098-30824" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30824).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7568" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7568) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1.1" (CONF:1098-10433). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32499).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15387" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15387).</sch:assert>
			<sch:assert id="a-1098-15388" test="cda:code[@code='10160-0']">This code SHALL contain exactly one [1..1] @code="10160-0" History of medication use (CONF:1098-15388).</sch:assert>
			<sch:assert id="a-1098-7570" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7570).</sch:assert>
			<sch:assert id="a-1098-7571" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7571).</sch:assert>
			<sch:assert id="a-1098-7572-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7572) such that it SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-10077).</sch:assert>
			<sch:assert id="a-1098-30825" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30825).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7723" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7723) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.10" (CONF:1098-10435). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32501).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-14749" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-14749).</sch:assert>
			<sch:assert id="a-1098-14750" test="cda:code[@code='18776-5']">This code SHALL contain exactly one [1..1] @code="18776-5" Plan of Treatment (CONF:1098-14750).</sch:assert>
			<sch:assert id="a-1098-16986" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-16986).</sch:assert>
			<sch:assert id="a-1098-7725" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7725).</sch:assert>
			<sch:assert id="a-1098-30813" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30813).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-5252" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-5252) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.1" (CONF:1098-10036). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32503).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-16791" test="count(cda:realmCode[@code='US'])=1">Heading: realmCode
SHALL contain exactly one [1..1] realmCode="US" (CONF:1098-16791).</sch:assert>
			<sch:assert id="a-1098-5361" test="count(cda:typeId)=1">SHALL contain exactly one [1..1] typeId (CONF:1098-5361).</sch:assert>
			<sch:assert id="a-1098-5250" test="cda:typeId[@root='2.16.840.1.113883.1.3']">This typeId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.1.3" (CONF:1098-5250).</sch:assert>
			<sch:assert id="a-1098-5251" test="cda:typeId[@extension='POCD_HD000040']">This typeId SHALL contain exactly one [1..1] @extension="POCD_HD000040" (CONF:1098-5251).</sch:assert>
			<sch:assert id="a-1098-5363" test="count(cda:id)=1">SHALL contain exactly one [1..1] id (CONF:1098-5363).</sch:assert>
			<sch:assert id="a-1098-5253" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-5253).</sch:assert>
			<sch:assert id="a-1098-9992-c" test=".">This code *SHALL* specify the particular kind of document (e.g., History and Physical, Discharge Summary, Progress Note) (CONF:1098-9992).</sch:assert>
			<sch:assert id="a-1098-5254" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-5254).
Note: The title can either be a locally defined name or the displayName corresponding to clinicalDocument/code</sch:assert>
			<sch:assert id="a-1098-5256-c" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5256).</sch:assert>
			<sch:assert id="a-1098-5259" test="count(cda:confidentialityCode)=1">SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind urn:oid:2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:1098-5259).</sch:assert>
			<sch:assert id="a-1098-5372" test="count(cda:languageCode)=1">SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language urn:oid:2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:1098-5372).</sch:assert>
			<sch:assert id="a-1098-5266" test="count(cda:recordTarget) &gt; 0">Heading: recordTarget
The recordTarget records the administrative and demographic data of the patient whose health information is described by the clinical document; each recordTarget must contain at least one patientRole element
SHALL contain at least one [1..*] recordTarget (CONF:1098-5266).</sch:assert>
			<sch:assert id="a-1098-5267" test="cda:recordTarget[count(cda:patientRole)=1]">Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:1098-5267).</sch:assert>
			<sch:assert id="a-1098-5444" test="count(cda:author) &gt; 0">Heading: author
The author element represents the creator of the clinical document.  The author may be a device or a person.
SHALL contain at least one [1..*] author (CONF:1098-5444).</sch:assert>
			<sch:assert id="a-1098-5519" test="count(cda:custodian)=1">Heading: custodian
The custodian element represents the organization that is in charge of maintaining and is entrusted with the care of the document.
There is only one custodian per CDA document. Allowing that a CDA document may not represent the original form of the authenticated document, the custodian represents the steward of the original source document. The custodian may be the document originator, a health information exchange, or other responsible party.
SHALL contain exactly one [1..1] custodian (CONF:1098-5519).</sch:assert>
			<sch:assert id="a-1098-10006-c" test="not(cda:participant) or cda:participant/cda:associatedEntity[cda:associatedPerson | cda:scopingOrganization]">*SHALL* contain associatedEntity/associatedPerson *AND/OR* associatedEntity/scopingOrganization (CONF:1098-10006).</sch:assert>
			<sch:assert id="a-1098-9953" test="not(cda:inFulfillmentOf) or cda:inFulfillmentOf[count(cda:order)=1]">The inFulfillmentOf, if present, SHALL contain exactly one [1..1] order (CONF:1098-9953).</sch:assert>
			<sch:assert id="a-1098-9954" test="not(cda:inFulfillmentOf/cda:order) or cda:inFulfillmentOf/cda:order[count(cda:id) &gt; 0]">This order SHALL contain at least one [1..*] id (CONF:1098-9954).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-recordTarget-patientRole-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole">
			<sch:assert id="a-1098-5268" test="count(cda:id) &gt; 0">This patientRole SHALL contain at least one [1..*] id (CONF:1098-5268).</sch:assert>
			<sch:assert id="a-1098-5271-c" test="count(cda:addr) &gt; 0">This patientRole SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5271).</sch:assert>
			<sch:assert id="a-1098-5280" test="count(cda:telecom) &gt; 0">This patientRole SHALL contain at least one [1..*] telecom (CONF:1098-5280).</sch:assert>
			<sch:assert id="a-1098-5283" test="count(cda:patient)=1">This patientRole SHALL contain exactly one [1..1] patient (CONF:1098-5283).</sch:assert>
			<sch:assert id="a-1098-5417" test="not(cda:providerOrganization) or cda:providerOrganization[count(cda:id) &gt; 0]">The providerOrganization, if present, SHALL contain at least one [1..*] id (CONF:1098-5417).</sch:assert>
			<sch:assert id="a-1098-5419" test="not(cda:providerOrganization) or cda:providerOrganization[count(cda:name) &gt; 0]">The providerOrganization, if present, SHALL contain at least one [1..*] name (CONF:1098-5419).</sch:assert>
			<sch:assert id="a-1098-5420" test="not(cda:providerOrganization) or cda:providerOrganization[count(cda:telecom) &gt; 0]">The providerOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:1098-5420).</sch:assert>
			<sch:assert id="a-1098-5422-c" test="not(cda:providerOrganization) or cda:providerOrganization[count(cda:addr) &gt; 0]">The providerOrganization, if present, SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5422).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-recordTarget-patientRole-patient-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
			<sch:assert id="a-1098-5284-c" test="count(cda:name) &gt; 0">This patient SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5284).</sch:assert>
			<sch:assert id="a-1098-6394" test="count(cda:administrativeGenderCode)=1">This patient SHALL contain exactly one [1..1] administrativeGenderCode, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) urn:oid:2.16.840.1.113883.1.11.1 DYNAMIC (CONF:1098-6394).</sch:assert>
			<sch:assert id="a-1098-5298" test="count(cda:birthTime)=1">This patient SHALL contain exactly one [1..1] birthTime (CONF:1098-5298).</sch:assert>
			<sch:assert id="a-1098-5299-c" test="string-length(cda:birthTime/@value) &gt;= 4">SHALL be precise to year (CONF:1098-5299).</sch:assert>
			<sch:assert id="a-1098-5322" test="count(cda:raceCode)=1">This patient SHALL contain exactly one [1..1] raceCode, which SHALL be selected from ValueSet Race Category Excluding Nulls urn:oid:2.16.840.1.113883.3.2074.1.1.3 DYNAMIC (CONF:1098-5322).</sch:assert>
			<sch:assert id="a-1098-31347-c" test="not(sdtc:raceCode) or cda:raceCode">If sdtc:raceCode is present, then the patient SHALL contain [1..1] raceCode (CONF:1098-31347).</sch:assert>
			<sch:assert id="a-1098-5323" test="count(cda:ethnicGroupCode)=1">This patient SHALL contain exactly one [1..1] ethnicGroupCode, which SHALL be selected from ValueSet Ethnicity urn:oid:2.16.840.1.114222.4.11.837 DYNAMIC (CONF:1098-5323).</sch:assert>
			<sch:assert id="a-1098-5385" test="not(cda:guardian) or cda:guardian[count(cda:guardianPerson)=1]">The guardian, if present, SHALL contain exactly one [1..1] guardianPerson (CONF:1098-5385).</sch:assert>
			<sch:assert id="a-1098-5386-c" test="not(cda:guardian) or cda:guardian/cda:guardianPerson[count(cda:name) &gt; 0]">This guardianPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5386).</sch:assert>
			<sch:assert id="a-1098-5396" test="not(cda:birthplace) or cda:birthplace[count(cda:place)=1]">The birthplace, if present, SHALL contain exactly one [1..1] place (CONF:1098-5396).</sch:assert>
			<sch:assert id="a-1098-5397" test="not(cda:birthplace/cda:place) or cda:birthplace/cda:place[count(cda:addr)=1]">This place SHALL contain exactly one [1..1] addr (CONF:1098-5397).</sch:assert>
			<sch:assert id="a-1098-5406" test="count(cda:languageCommunication) &gt; 0">This patient SHALL contain at least one [1..*] languageCommunication (CONF:1098-5406).</sch:assert>
			<sch:assert id="a-1098-5407" test="cda:languageCommunication[count(cda:languageCode)=1]">Such languageCommunications SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet PatientLanguage urn:oid:2.16.840.1.113883.11.20.9.64 DYNAMIC (CONF:1098-5407).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-author-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author">
			<sch:assert id="a-1098-5445-c" test="count(cda:effectiveTime)=1">Such authors SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5445).</sch:assert>
			<sch:assert id="a-1098-5448" test="count(cda:assignedAuthor)=1">Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:1098-5448).</sch:assert>
			<sch:assert id="a-1098-5449" test="cda:assignedAuthor[count(cda:id) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] id (CONF:1098-5449).</sch:assert>
			<sch:assert id="a-1098-16788" test="not(cda:assignedAuthor/cda:code) or cda:assignedAuthor/cda:code[@code]">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-16788).</sch:assert>
			<sch:assert id="a-1098-5452-c" test="cda:assignedAuthor[count(cda:addr) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5452).</sch:assert>
			<sch:assert id="a-1098-5428" test="cda:assignedAuthor[count(cda:telecom) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] telecom (CONF:1098-5428).</sch:assert>
			<sch:assert id="a-1098-16789-c" test="not(cda:assignedAuthor/cda:assignedPerson) or cda:assignedAuthor/cda:assignedPerson[count(cda:name) &gt; 0]">The assignedPerson, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-16789).</sch:assert>
			<sch:assert id="a-1098-16784" test="not(cda:assignedAuthor/cda:assignedAuthoringDevice) or cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:manufacturerModelName)=1]">The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] manufacturerModelName (CONF:1098-16784).</sch:assert>
			<sch:assert id="a-1098-16785" test="not(cda:assignedAuthor/cda:assignedAuthoringDevice) or cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:softwareName)=1]">The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] softwareName (CONF:1098-16785).</sch:assert>
			<sch:assert id="a-1098-16790-c" test="cda:assignedAuthor[count(cda:assignedPerson | cda:assignedAuthoringDevice)=1] and not(cda:assignedAuthor[count(cda:assignedPerson | cda:assignedAuthoringDevice)!=1])">There SHALL be exactly one assignedAuthor/assignedPerson or exactly one assignedAuthor/assignedAuthoringDevice (CONF:1098-16790).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-dataEnterer-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer">
			<sch:assert id="a-1098-5442" test="count(cda:assignedEntity)=1">The dataEnterer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-5442).</sch:assert>
			<sch:assert id="a-1098-5443" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-5443).</sch:assert>
			<sch:assert id="a-1098-5460-c" test="cda:assignedEntity[count(cda:addr) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5460).</sch:assert>
			<sch:assert id="a-1098-5466" test="cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-5466).</sch:assert>
			<sch:assert id="a-1098-5469" test="cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-5469).</sch:assert>
			<sch:assert id="a-1098-5470-c" test="cda:assignedEntity/cda:assignedPerson[count(cda:name) &gt; 0]">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5470).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-custodian-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian">
			<sch:assert id="a-1098-5520" test="count(cda:assignedCustodian)=1">This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:1098-5520).</sch:assert>
			<sch:assert id="a-1098-5521" test="cda:assignedCustodian[count(cda:representedCustodianOrganization)=1]">This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:1098-5521).</sch:assert>
			<sch:assert id="a-1098-5522" test="cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:id) &gt; 0]">This representedCustodianOrganization SHALL contain at least one [1..*] id (CONF:1098-5522).</sch:assert>
			<sch:assert id="a-1098-5524" test="cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:name)=1]">This representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:1098-5524).</sch:assert>
			<sch:assert id="a-1098-5525" test="cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:telecom)=1]">This representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:1098-5525).</sch:assert>
			<sch:assert id="a-1098-5559-c" test="cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:addr)=1]">This representedCustodianOrganization SHALL contain exactly one [1..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5559).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-informationRecipient-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informationRecipient">
			<sch:assert id="a-1098-5566" test="count(cda:intendedRecipient)=1">The informationRecipient, if present, SHALL contain exactly one [1..1] intendedRecipient (CONF:1098-5566).</sch:assert>
			<sch:assert id="a-1098-5568-c" test="not(cda:intendedRecipient/cda:informationRecipient) or cda:intendedRecipient/cda:informationRecipient[count(cda:name) &gt; 0]">The informationRecipient, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5568).</sch:assert>
			<sch:assert id="a-1098-5578" test="not(cda:intendedRecipient/cda:receivedOrganization) or cda:intendedRecipient/cda:receivedOrganization[count(cda:name)=1]">The receivedOrganization, if present, SHALL contain exactly one [1..1] name (CONF:1098-5578).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-documentationOf-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf">
			<sch:assert id="a-1098-14836" test="count(cda:serviceEvent)=1">A serviceEvent represents the main act being documented, such as a colonoscopy or a cardiac stress study. In a provision of healthcare serviceEvent, the care providers, PCP, or other longitudinal providers, are recorded within the serviceEvent. If the document is about a single encounter, the providers associated can be recorded in the componentOf/encompassingEncounter template.
The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1098-14836).</sch:assert>
			<sch:assert id="a-1098-14837" test="cda:serviceEvent[count(cda:effectiveTime)=1]">This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:1098-14837).</sch:assert>
			<sch:assert id="a-1098-14838" test="cda:serviceEvent/cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-14838).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-performer-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf/cda:serviceEvent/cda:performer">
			<sch:assert id="a-1098-14840" test="@typeCode and @typeCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.19601']/voc:code/@value">The performer, if present, SHALL contain exactly one [1..1] @typeCode, which SHALL be selected from ValueSet x_ServiceEventPerformer urn:oid:2.16.840.1.113883.1.11.19601 STATIC 2014-09-01 (CONF:1098-14840).</sch:assert>
			<sch:assert id="a-1098-14841" test="count(cda:assignedEntity)=1">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-14841).</sch:assert>
			<sch:assert id="a-1098-14846" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-14846).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-legalAuthenticator-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator">
			<sch:assert id="a-1098-5580-c" test="count(cda:effectiveTime)=1">The legalAuthenticator, if present, SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5580).</sch:assert>
			<sch:assert id="a-1098-5583" test="count(cda:signatureCode)=1">The legalAuthenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:1098-5583).</sch:assert>
			<sch:assert id="a-1098-5584" test="cda:signatureCode[@code='S']">This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature urn:oid:2.16.840.1.113883.5.89 STATIC) (CONF:1098-5584).</sch:assert>
			<sch:assert id="a-1098-5585" test="count(cda:assignedEntity)=1">The legalAuthenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-5585).</sch:assert>
			<sch:assert id="a-1098-5586" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-5586).</sch:assert>
			<sch:assert id="a-1098-5589-c" test="cda:assignedEntity[count(cda:addr) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5589).</sch:assert>
			<sch:assert id="a-1098-5595" test="cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-5595).</sch:assert>
			<sch:assert id="a-1098-5597" test="cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-5597).</sch:assert>
			<sch:assert id="a-1098-5598-c" test="cda:assignedEntity/cda:assignedPerson[count(cda:name) &gt; 0]">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5598).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-componentOf-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:componentOf">
			<sch:assert id="a-1098-9956" test="count(cda:encompassingEncounter)=1">The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:1098-9956).</sch:assert>
			<sch:assert id="a-1098-9959" test="cda:encompassingEncounter[count(cda:id) &gt; 0]">This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1098-9959).</sch:assert>
			<sch:assert id="a-1098-9958" test="cda:encompassingEncounter[count(cda:effectiveTime)=1]">This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9958).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5271-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5386-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:guardianPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5422-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5452-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5460-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5470-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5559-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5568-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informationRecipient/cda:intendedRecipient/cda:informationRecipient">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5589-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5598-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-16789-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5359-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5256-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5580-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5445-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7654" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7654) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.14" (CONF:1098-10521). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32506).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]">
			<sch:let name="origTextValue" value="cda:code/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1098-7652" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7652).</sch:assert>
			<sch:assert id="a-1098-7653" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7653).</sch:assert>
			<sch:assert id="a-1098-7655" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7655).</sch:assert>
			<sch:assert id="a-1098-7656" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-7656).</sch:assert>
			<sch:assert id="a-1098-19206-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value *SHALL* begin with a '#' and *SHALL* point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19206).</sch:assert>
			<sch:assert id="a-1098-7661" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7661).</sch:assert>
			<sch:assert id="a-1098-32366" test="count(cda:statusCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.22']/voc:code/@value])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureAct statusCode urn:oid:2.16.840.1.113883.11.20.9.22 STATIC 2014-04-23 (CONF:1098-32366).</sch:assert>
			<sch:assert id="a-1098-7890-c" test="count(cda:methodCode)=0 or (cda:methodCode[@nullFlavor] and cda:methodCode/@nullFlavor=cda:code/@nullFlavor) or (cda:methodCode/@code=cda:code/@code and cda:methodCode/@codeSystem=cda:code/@codeSystem)">MethodCode SHALL NOT conflict with the method inherent in Procedure / code (CONF:1098-7890).</sch:assert>
			<sch:assert id="a-1098-16082" test="not(cda:targetSiteCode) or cda:targetSiteCode[@code]">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-16082).</sch:assert>
			<sch:assert id="a-1098-7704" test="not(cda:specimen) or cda:specimen[count(cda:specimenRole)=1]">The specimen, if present, SHALL contain exactly one [1..1] specimenRole (CONF:1098-7704).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:performer[cda:assignedEntity[cda:id][cda:addr][cda:telecom]]">
			<sch:assert id="a-1098-7737-branch-29746" test="not(cda:assignedEntity/cda:representedOrganization) or cda:assignedEntity/cda:representedOrganization[count(cda:telecom)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1098-7737).</sch:assert>
			<sch:assert id="a-1098-7736-branch-29746" test="not(cda:assignedEntity/cda:representedOrganization) or cda:assignedEntity/cda:representedOrganization[count(cda:addr)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1098-7736).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-14926" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-14926) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.4" (CONF:1098-14927). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32508).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-9041" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-9041).</sch:assert>
			<sch:assert id="a-1098-9042" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9042).</sch:assert>
			<sch:assert id="a-1098-9043" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-9043).</sch:assert>
			<sch:assert id="a-1098-9045" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-9045).</sch:assert>
			<sch:assert id="a-1098-9049" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9049).</sch:assert>
			<sch:assert id="a-1098-19112" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19112).</sch:assert>
			<sch:assert id="a-1098-9050" test="count(cda:effectiveTime)=1">If the problem is known to be resolved, but the date of resolution is not known, then the high element SHALL be present, and the nullFlavor attribute SHALL be set to 'UNK'. Therefore, the existence of an high element within a problem does indicate that the problem has been resolved.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9050).</sch:assert>
			<sch:assert id="a-1098-15603" test="cda:effectiveTime[count(cda:low)=1]">The effectiveTime/low (a.k.a. "onset date") asserts when the condition became biologically active.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-15603).</sch:assert>
			<sch:assert id="a-1098-9058-c" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-9058).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-16772" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16772) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.3" (CONF:1098-16773). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32509).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-9024" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-9024).</sch:assert>
			<sch:assert id="a-1098-9025" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9025).</sch:assert>
			<sch:assert id="a-1098-9026" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-9026).</sch:assert>
			<sch:assert id="a-1098-9027" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-9027).</sch:assert>
			<sch:assert id="a-1098-19184" test="cda:code[@code='CONC']">This code SHALL contain exactly one [1..1] @code="CONC" Concern (CONF:1098-19184).</sch:assert>
			<sch:assert id="a-1098-32168" test="cda:code[@codeSystem='2.16.840.1.113883.5.6']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.6" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-32168).</sch:assert>
			<sch:assert id="a-1098-9029" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9029).</sch:assert>
			<sch:assert id="a-1098-31525" test="count(cda:statusCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.19']/voc:code/@value])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode urn:oid:2.16.840.1.113883.11.20.9.19 STATIC 2011-09-10 (CONF:1098-31525).</sch:assert>
			<sch:assert id="a-1098-9030" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9030).</sch:assert>
			<sch:assert id="a-1098-9032" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-9032).
Note: The effectiveTime/low asserts when the concern became active. This equates to the time the concern was authored in the patient's chart. </sch:assert>
			<sch:assert id="a-1098-9034" test="count(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1098-9034) such that it SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-9035). SHALL contain exactly one [1..1] Problem Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2014-06-09) (CONF:1098-15980).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7877" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7877) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5" (CONF:1098-10440). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32511).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15407" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15407).</sch:assert>
			<sch:assert id="a-1098-15408" test="cda:code[@code='11450-4']">This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CONF:1098-15408).</sch:assert>
			<sch:assert id="a-1098-7879" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7879).</sch:assert>
			<sch:assert id="a-1098-7880" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7880).</sch:assert>
			<sch:assert id="a-1098-31141" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31141).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-9179" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-9179) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5.1" (CONF:1098-10441). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32510).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15409" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15409).</sch:assert>
			<sch:assert id="a-1098-15410" test="cda:code[@code='11450-4']">This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CONF:1098-15410).</sch:assert>
			<sch:assert id="a-1098-31142" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1]  @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31142).</sch:assert>
			<sch:assert id="a-1098-9181" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9181).</sch:assert>
			<sch:assert id="a-1098-9182" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-9182).</sch:assert>
			<sch:assert id="a-1098-9183-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-9183) such that it SHALL contain exactly one [1..1] Problem Concern Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2014-06-09) (CONF:1098-15506).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8152" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8152) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.38" (CONF:1098-10405). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32525).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15383" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15383).</sch:assert>
			<sch:assert id="a-1098-15384" test="cda:code[@code='29549-3']">This code SHALL contain exactly one [1..1] @code="29549-3" Medications Administered (CONF:1098-15384).</sch:assert>
			<sch:assert id="a-1098-8154" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8154).</sch:assert>
			<sch:assert id="a-1098-8155" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-8155).</sch:assert>
			<sch:assert id="a-1098-15499" test="not(cda:entry) or cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']])=1]">The entry, if present, SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-15499).</sch:assert>
			<sch:assert id="a-1098-30829" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30829).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-6270" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-6270) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7" (CONF:1098-6271). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32532).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15423" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15423).</sch:assert>
			<sch:assert id="a-1098-15424" test="cda:code[@code='47519-4']">This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CONF:1098-15424).</sch:assert>
			<sch:assert id="a-1098-31139" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-31139).</sch:assert>
			<sch:assert id="a-1098-17184" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-17184).</sch:assert>
			<sch:assert id="a-1098-6273" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-6273).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7891" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7891) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7.1" (CONF:1098-10447). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32533).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15425" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15425).</sch:assert>
			<sch:assert id="a-1098-15426" test="cda:code[@code='47519-4']">This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CONF:1098-15426).</sch:assert>
			<sch:assert id="a-1098-7893" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7893).</sch:assert>
			<sch:assert id="a-1098-7894" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7894).</sch:assert>
			<sch:assert id="a-1098-7895-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14'][@extension='2014-06-09']])=1]) &gt; 0) or (count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.13'][@extension='2014-06-09']])=1]) &gt; 0) or (count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.12'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present there SHALL be at least one entry conformant to Procedure Activity Act (V2) (templateId 2.16.840.1.113883.10.20.22.4.12:2014-06-09) OR Procedure Activity Observation (V2) (templateId: 2.16.840.1.113883.10.20.22.4.13:2014-06-09) *OR* Procedure Activity Procedure (V2) (templateId: 2.16.840.1.113883.10.20.22.4.14:2014-06-09)
SHALL contain at least one [1..*] entry (CONF:1098-7895) such that it MAY contain zero or one [0..1] Procedure Activity Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09) (CONF:1098-15512). MAY contain zero or one [0..1] Procedure Activity Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.12:2014-06-09) (CONF:1098-32877). MAY contain zero or one [0..1] Procedure Activity Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.13:2014-06-09) (CONF:1098-32878).</sch:assert>
			<sch:assert id="a-1098-31138" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31138).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-30437" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30437) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.40" (CONF:1098-30438). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32553).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-8564" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8564).</sch:assert>
			<sch:assert id="a-1098-8565" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.23']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) urn:oid:2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:1098-8565).</sch:assert>
			<sch:assert id="a-1098-8567" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8567).</sch:assert>
			<sch:assert id="a-1098-30439" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-30439).</sch:assert>
			<sch:assert id="a-1098-31880" test="cda:statusCode[@code='active']">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31880).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8568" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8568).</sch:assert>
			<sch:assert id="a-1098-8569" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.23']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) urn:oid:2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:1098-8569).</sch:assert>
			<sch:assert id="a-1098-30444" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30444) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.41" (CONF:1098-30445). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32554).</sch:assert>
			<sch:assert id="a-1098-8571" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8571).</sch:assert>
			<sch:assert id="a-1098-30446" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-30446).</sch:assert>
			<sch:assert id="a-1098-31978" test="cda:statusCode[@code='active']">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31978).</sch:assert>
			<sch:assert id="a-1098-31976" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-31976).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8572" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8572).</sch:assert>
			<sch:assert id="a-1098-8573" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.24']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) urn:oid:2.16.840.1.113883.11.20.9.24 STATIC 2011-09-30 (CONF:1098-8573).</sch:assert>
			<sch:assert id="a-1098-30465" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30465) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.42" (CONF:1098-30466). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32557).</sch:assert>
			<sch:assert id="a-1098-8575" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8575).</sch:assert>
			<sch:assert id="a-1098-30468-c" test="count(cda:effectiveTime)=1">The effectiveTime in a planned medication activity represents the time that the medication activity should occur.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-30468).</sch:assert>
			<sch:assert id="a-1098-32082" test="count(cda:consumable)=1">SHALL contain exactly one [1..1] consumable (CONF:1098-32082).</sch:assert>
			<sch:assert id="a-1098-32083" test="cda:consumable[count(cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']])=1]">This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-32083).</sch:assert>
			<sch:assert id="a-1098-32085" test="not(cda:precondition) or cda:precondition[@typeCode='PRCN']">The precondition, if present, SHALL contain exactly one [1..1] @typeCode="PRCN" Precondition (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32085).</sch:assert>
			<sch:assert id="a-1098-32086" test="not(cda:precondition) or cda:precondition[count(cda:criterion[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.25' and @extension = '2014-06-09']])=1]">The precondition, if present, SHALL contain exactly one [1..1] Precondition for Substance Administration (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09) (CONF:1098-32086).</sch:assert>
			<sch:assert id="a-1098-32087" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-32087).</sch:assert>
			<sch:assert id="a-1098-32088" test="cda:statusCode[@code='active']">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32088).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-9057" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-9057).</sch:assert>
			<sch:assert id="a-1098-9072" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9072).</sch:assert>
			<sch:assert id="a-1098-19143" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19143).</sch:assert>
			<sch:assert id="a-1098-19144" test="cda:code[@code='11323-3']">This code SHALL contain exactly one [1..1] @code="11323-3" Health status (CONF:1098-19144).</sch:assert>
			<sch:assert id="a-1098-9074" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9074).</sch:assert>
			<sch:assert id="a-1098-19103" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19103).</sch:assert>
			<sch:assert id="a-1098-9075" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet HealthStatus urn:oid:2.16.840.1.113883.1.11.20.12 DYNAMIC (CONF:1098-9075).</sch:assert>
			<sch:assert id="a-1098-32161" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32161).</sch:assert>
			<sch:assert id="a-1098-32486" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32486).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-16756" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16756) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.5" (CONF:1098-16757). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32558).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7482" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7482) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.19" (CONF:1098-10502). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32570).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7480" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7480).</sch:assert>
			<sch:assert id="a-1098-7481" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7481).</sch:assert>
			<sch:assert id="a-1098-7483" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7483).
Note: If the id element is used to reference a problem recorded else where in the document then this id must equal another entry/id in the same document instance. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. Its purpose is to obviate the need to repeat the complete XML representation of the referred to entry when relating one entry to another.</sch:assert>
			<sch:assert id="a-1098-7487" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7487).</sch:assert>
			<sch:assert id="a-1098-19105" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19105).</sch:assert>
			<sch:assert id="a-1098-31229" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which MAY be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-31229).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-14806" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14806).</sch:assert>
			<sch:assert id="a-1098-14807" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14807).</sch:assert>
			<sch:assert id="a-1098-19170" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19170).</sch:assert>
			<sch:assert id="a-1098-14809" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-14809).</sch:assert>
			<sch:assert id="a-1098-19116" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19116).</sch:assert>
			<sch:assert id="a-1098-14810" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1098-14810).</sch:assert>
			<sch:assert id="a-1098-14817" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.38']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Current Smoking Status urn:oid:2.16.840.1.113883.11.20.9.38 STATIC 2014-09-01 (CONF:1098-14817).
If the patient's current smoking status is unknown, @code SHALL contain '266927001' (Unknown if ever smoked) from ValueSet Current Smoking Status (2.16.840.1.113883.11.20.9.38 STATIC 2014-09-01) (CONF:1098-31019).</sch:assert>
			<sch:assert id="a-1098-31039" test="cda:code[@code='72166-2']">This code SHALL contain exactly one [1..1] @code="72166-2" Tobacco smoking status NHIS (CONF:1098-31039).</sch:assert>
			<sch:assert id="a-1098-32157" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32157).</sch:assert>
			<sch:assert id="a-1098-31928" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-31928).
Note: This template represents a “snapshot in time” observation, simply reflecting what the patient’s current smoking status is at the time of the observation. As a result, the effectiveTime is constrained to just a time stamp, and will approximately correspond with the author/time.</sch:assert>
			<sch:assert id="a-1098-32401" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32401).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-14815" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-14815) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.78" (CONF:1098-14816). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32573).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7297" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7297).</sch:assert>
			<sch:assert id="a-1098-7298" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7298).</sch:assert>
			<sch:assert id="a-1098-7300" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7300).</sch:assert>
			<sch:assert id="a-1098-7301" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result urn:oid:2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:1098-7301).</sch:assert>
			<sch:assert id="a-1098-7303" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7303).</sch:assert>
			<sch:assert id="a-1098-19119" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19119).</sch:assert>
			<sch:assert id="a-1098-7304" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7304).</sch:assert>
			<sch:assert id="a-1098-7305" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1098-7305).</sch:assert>
			<sch:assert id="a-1098-31579" test="cda:value[@xsi:type='PQ'][@unit]">This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-31579).</sch:assert>
			<sch:assert id="a-1098-32886" test="not(cda:interpretationCode) or cda:interpretationCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.78']/voc:code/@value]">The interpretationCode, if present, SHALL contain exactly one [1..1] @code (ValueSet: Observation Interpretation (HL7) urn:oid:2.16.840.1.113883.1.11.78 STATIC 2014-09-01) (CONF:1098-32886).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7299" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7299) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.27" (CONF:1098-10527). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32574).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7130" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7130).</sch:assert>
			<sch:assert id="a-1098-7131" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7131).</sch:assert>
			<sch:assert id="a-1098-7137" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7137).</sch:assert>
			<sch:assert id="a-1098-7133" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1098-7133).</sch:assert>
			<sch:assert id="a-1098-7134" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7134).</sch:assert>
			<sch:assert id="a-1098-14849" test="cda:statusCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.39']/voc:code/@value]">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status urn:oid:2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:1098-14849).</sch:assert>
			<sch:assert id="a-1098-7140" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7140).
Note: Represents the biologically relevant time of the measurement (e.g., the time a blood pressure reading is obtained, the time the blood sample was obtained for a chemistry test).</sch:assert>
			<sch:assert id="a-1098-7151" test="not(cda:referenceRange) or cda:referenceRange[count(cda:observationRange)=1]">The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:1098-7151).</sch:assert>
			<sch:assert id="a-1098-7152-c" test="not(cda:referenceRange/cda:observationRange/cda:code)">This observationRange SHALL NOT contain [0..0] code (CONF:1098-7152).</sch:assert>
			<sch:assert id="a-1098-31484-c" test="not(tested)">If Observation/value is a physical quantity (*xsi:type*=*"PQ"*), the unit of measure *SHALL* be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 *DYNAMIC* (CONF:1098-31484).</sch:assert>
			<sch:assert id="a-1098-32175" test="not(cda:referenceRange/cda:observationRange) or cda:referenceRange/cda:observationRange[count(cda:value)=1]">This observationRange SHALL contain exactly one [1..1] value (CONF:1098-32175).</sch:assert>
			<sch:assert id="a-1098-32476" test="not(cda:interpretationCode) or cda:interpretationCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.78']/voc:code/@value]">The interpretationCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Observation Interpretation (HL7) urn:oid:2.16.840.1.113883.1.11.78 STATIC 2014-09-01 (CONF:1098-32476).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7136" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7136) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.2" (CONF:1098-9138). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32575).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7408" test="@classCode='MANU'">SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass urn:oid:2.16.840.1.113883.5.110 STATIC) (CONF:1098-7408).</sch:assert>
			<sch:assert id="a-1098-7411" test="count(cda:manufacturedMaterial)=1">SHALL contain exactly one [1..1] manufacturedMaterial (CONF:1098-7411).
Note: A medication should be recorded as a pre-coordinated ingredient + strength + dose form (e.g., “metoprolol 25mg tablet”, “amoxicillin 400mg/5mL suspension”) where possible. This includes RxNorm codes whose Term Type is SCD (semantic clinical drug), SBD (semantic brand drug), GPCK (generic pack), BPCK (brand pack).</sch:assert>
			<sch:assert id="a-1098-7412" test="cda:manufacturedMaterial[count(cda:code)=1]">This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug urn:oid:2.16.840.1.113762.1.4.1010.4 DYNAMIC (CONF:1098-7412).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors" context="cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7409" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7409) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.23" (CONF:1098-10506). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32579).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7357" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7357).</sch:assert>
			<sch:assert id="a-1098-7358" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7358).</sch:assert>
			<sch:assert id="a-1098-19162" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19162).</sch:assert>
			<sch:assert id="a-1098-19163" test="cda:code[@code='33999-4' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="33999-4" Status (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1098-19163).</sch:assert>
			<sch:assert id="a-1098-7364" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7364).</sch:assert>
			<sch:assert id="a-1098-19113" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19113).</sch:assert>
			<sch:assert id="a-1098-7365" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem Status urn:oid:2.16.840.1.113883.3.88.12.80.68 DYNAMIC (CONF:1098-7365).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7359" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7359) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.6" (CONF:1098-10518). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32581).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7279" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" CLUSTER (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7279).</sch:assert>
			<sch:assert id="a-1098-7280" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7280).</sch:assert>
			<sch:assert id="a-1098-7282" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7282).</sch:assert>
			<sch:assert id="a-1098-7284" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7284).</sch:assert>
			<sch:assert id="a-1098-19120" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19120).</sch:assert>
			<sch:assert id="a-1098-7285" test="count(cda:component[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] component (CONF:1098-7285) such that it SHALL contain exactly one [1..1] Vital Sign Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.27:2014-06-09) (CONF:1098-15946).</sch:assert>
			<sch:assert id="a-1098-32741" test="not(cda:code) or cda:code[@code='74728-7']">The code, if present, SHALL contain exactly one [1..1] @code="74728-7" Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel - HL7.CCDAr1.1 (CONF:1098-32741).</sch:assert>
			<sch:assert id="a-1098-32742" test="not(cda:code) or cda:code[@codeSystem='2.16.840.1.113883.6.1']">The code, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1 " LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32742).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7281" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7281) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.26" (CONF:1098-10528). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32582).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7268" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7268) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4" (CONF:1098-10451). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32584).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15242" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15242).</sch:assert>
			<sch:assert id="a-1098-15243" test="cda:code[@code='8716-3']">This code SHALL contain exactly one [1..1] @code="8716-3" Vital Signs (CONF:1098-15243).</sch:assert>
			<sch:assert id="a-1098-9966" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9966).</sch:assert>
			<sch:assert id="a-1098-7270" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7270).</sch:assert>
			<sch:assert id="a-1098-30902" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30902).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15962" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15962).</sch:assert>
			<sch:assert id="a-1098-15963" test="cda:code[@code='8716-3']">This code SHALL contain exactly one [1..1] @code="8716-3" Vital Signs (CONF:1098-15963).</sch:assert>
			<sch:assert id="a-1098-9967" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9967).</sch:assert>
			<sch:assert id="a-1098-7275" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7275).</sch:assert>
			<sch:assert id="a-1098-7276-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7276) such that it SHALL contain exactly one [1..1] Vital Signs Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.26:2014-06-09) (CONF:1098-15964).</sch:assert>
			<sch:assert id="a-1098-30903" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30903).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7273" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7273) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4.1" (CONF:1098-10452). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32585).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7121" test="@classCode">SHALL contain exactly one [1..1] @classCode (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7121).</sch:assert>
			<sch:assert id="a-1098-7122" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7122).</sch:assert>
			<sch:assert id="a-1098-7127" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7127).</sch:assert>
			<sch:assert id="a-1098-7128" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-7128).</sch:assert>
			<sch:assert id="a-1098-7123" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7123).</sch:assert>
			<sch:assert id="a-1098-14848" test="cda:statusCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.39']/voc:code/@value]">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status urn:oid:2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:1098-14848).</sch:assert>
			<sch:assert id="a-1098-7124" test="count(cda:component[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] component (CONF:1098-7124) such that it SHALL contain exactly one [1..1] Result Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2014-06-09) (CONF:1098-14850).</sch:assert>
			<sch:assert id="a-1098-32488" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:low)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1098-32488).</sch:assert>
			<sch:assert id="a-1098-32489" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:high)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] high (CONF:1098-32489).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7126" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7126) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.1" (CONF:1098-9134). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32588).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-16558" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-16558).</sch:assert>
			<sch:assert id="a-1098-16559" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-16559).</sch:assert>
			<sch:assert id="a-1098-19174" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19174).</sch:assert>
			<sch:assert id="a-1098-19175" test="cda:code[@code='11367-0']">This code SHALL contain exactly one [1..1] @code="11367-0" History of tobacco use (CONF:1098-19175).</sch:assert>
			<sch:assert id="a-1098-16561" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-16561).</sch:assert>
			<sch:assert id="a-1098-19118" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19118).</sch:assert>
			<sch:assert id="a-1098-16564" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-16564).
Note: The effectiveTime represents the biologically relevant time of the observation. Thus, an observation of “former smoker” will have an effectiveTime defining the time during which the patient has been a former smoker; an observation of “current smoker” will have an effectiveTime defining the time during which the patient has been a current smoker.</sch:assert>
			<sch:assert id="a-1098-16565" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-16565).</sch:assert>
			<sch:assert id="a-1098-16562" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1098-16562).</sch:assert>
			<sch:assert id="a-1098-16563" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Tobacco Use urn:oid:2.16.840.1.113883.11.20.9.41 DYNAMIC (CONF:1098-16563).</sch:assert>
			<sch:assert id="a-1098-32172" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32172).</sch:assert>
			<sch:assert id="a-1098-32400" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32400).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-16566" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16566) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.85" (CONF:1098-16567). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32589).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7116" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7116) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3" (CONF:1098-9136). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32591).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15431" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15431).</sch:assert>
			<sch:assert id="a-1098-15432" test="cda:code[@code='30954-2']">This code SHALL contain exactly one [1..1] @code="30954-2" Relevant diagnostic tests and/or laboratory data (CONF:1098-15432).</sch:assert>
			<sch:assert id="a-1098-8891" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8891).</sch:assert>
			<sch:assert id="a-1098-7118" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7118).</sch:assert>
			<sch:assert id="a-1098-31041" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31041).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15433" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15433).</sch:assert>
			<sch:assert id="a-1098-15434" test="cda:code[@code='30954-2']">This code SHALL contain exactly one [1..1] @code="30954-2" Relevant diagnostic tests and/or laboratory data (CONF:1098-15434).</sch:assert>
			<sch:assert id="a-1098-31040" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31040).</sch:assert>
			<sch:assert id="a-1098-8892" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8892).</sch:assert>
			<sch:assert id="a-1098-7111" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7111).</sch:assert>
			<sch:assert id="a-1098-7112-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7112) such that it SHALL contain exactly one [1..1] Result Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2014-06-09) (CONF:1098-15516).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7108" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7108) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3.1" (CONF:1098-9137). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32592).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8898" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8898).</sch:assert>
			<sch:assert id="a-1098-8899" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8899).</sch:assert>
			<sch:assert id="a-1098-8901" test="count(cda:id) &gt; 0">This id is a unique identifier for the policy or program providing the coverage
SHALL contain at least one [1..*] id (CONF:1098-8901).</sch:assert>
			<sch:assert id="a-1098-8903" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Payer urn:oid:2.16.840.1.114222.4.11.3591 DYNAMIC (CONF:1098-8903).</sch:assert>
			<sch:assert id="a-1098-8902" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8902).</sch:assert>
			<sch:assert id="a-1098-19109" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19109).</sch:assert>
			<sch:assert id="a-1098-8906" test="count(cda:performer[@typeCode='PRF'][count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87'])=1][count(cda:assignedEntity[count(cda:id) &gt; 0])=1])=1">This performer represents the Payer.
SHALL contain exactly one [1..1] performer (CONF:1098-8906) such that it SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8907). SHALL contain exactly one [1..1] templateId (CONF:1098-16808). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.87" Payer Performer (CONF:1098-16809). SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8908). This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-8909).</sch:assert>
			<sch:assert id="a-1098-15992-c" test="not(cda:performer/cda:assignedEntity[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:code) or cda:performer/cda:assignedEntity[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:code[@code]">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet HL7FinanciallyResponsiblePartyType urn:oid:2.16.840.1.113883.1.11.10416 DYNAMIC (CONF:1098-15992).</sch:assert>
			<sch:assert id="a-1098-8916" test="count(cda:participant[@typeCode='COV'][count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89'])=1][count(cda:participantRole[count(cda:id) &gt; 0][count(cda:code)=1])=1])=1">SHALL contain exactly one [1..1] participant (CONF:1098-8916) such that it SHALL contain exactly one [1..1] @typeCode="COV" Coverage target (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8917). SHALL contain exactly one [1..1] templateId (CONF:1098-16812). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.89" Covered Party Participant (CONF:1098-16814). SHALL contain exactly one [1..1] participantRole (CONF:1098-8921). This participantRole SHALL contain at least one [1..*] id (CONF:1098-8922).
This id is a unique identifier for the covered party member. Implementers SHOULD use the same GUID for each instance of a member identifier from the same health plan (CONF:1098-8984). This participantRole SHALL contain exactly one [1..1] code (CONF:1098-8923).</sch:assert>
			<sch:assert id="a-1098-8939" test="count(cda:entryRelationship[@typeCode='REFR']) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1098-8939) such that it SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8940).</sch:assert>
			<sch:assert id="a-1098-8942" test="cda:entryRelationship[@typeCode='REFR']/cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.1.19'] or (@classCode='ACT' and @moodCode='DEF')]">The target of a policy activity with act/entryRelationship/@typeCode="REFR" SHALL be an authorization activity (templateId 2.16.840.1.113883.10.20.1.19) OR an act, with act[@classCode="ACT"] and act[@moodCode="DEF"], representing a description of the coverage plan (CONF:1098-8942).</sch:assert>
			<sch:assert id="a-1098-8943" test="not(cda:entryRelationship[@typeCode='REFR']/cda:act[@classCode='ACT' and @moodCode='DEF']) or cda:entryRelationship[@typeCode='REFR']/cda:act[@classCode='ACT' and @moodCode='DEF'][count(cda:id) &gt; 0 and cda:text]">A description of the coverage plan SHALL contain one or more act/id, to represent the plan identifier, and an act/text with the name of the plan (CONF:1098-8943).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8900" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8900) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.61" (CONF:1098-10516). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32595).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']][cda:participantRole[cda:id][cda:code]]">
			<sch:assert id="a-1098-8930-branch-33705" test="not(cda:participantRole/cda:playingEntity) or cda:participantRole/cda:playingEntity[count(cda:name) &gt; 0]">If the covered party’s name is recorded differently in the health plan and in the registration/pharmacy benefit summary (due to marriage or for other reasons), use the name as it is recorded in the health plan.
The playingEntity, if present, SHALL contain at least one [1..*] name (CONF:1098-8930).</sch:assert>
			<sch:assert id="a-1098-31344-branch-33705" test="not(cda:participantRole/cda:playingEntity) or cda:participantRole/cda:playingEntity[count(sdtc:birthTime)=1]">If the covered party’s date of birth is recorded differently in the health plan and in the registration/pharmacy benefit summary, use the date of birth as it is recorded in the health plan.
The playingEntity, if present, SHALL contain exactly one [1..1] sdtc:birthTime (CONF:1098-31344). The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the birthTime element (CONF:1098-31345).</sch:assert>
			<sch:let name="policyHolder" value="../cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]"/>
			<sch:assert id="a-1098-17139-branch-33705" test="not($policyHolder) or count(cda:participantRole/cda:id/@root[. = $policyHolder/cda:participantRole/cda:id/@root])=0">When the Subscriber is the patient, the participant element describing the subscriber SHALL NOT be present. This information will be recorded instead in the data elements used to record member information (CONF:1098-17139).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-8964-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10484-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10483-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8872" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8872).</sch:assert>
			<sch:assert id="a-1098-8873" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8873).</sch:assert>
			<sch:assert id="a-1098-8874" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8874).</sch:assert>
			<sch:assert id="a-1098-8876" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-8876).</sch:assert>
			<sch:assert id="a-1098-32156" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32156).</sch:assert>
			<sch:assert id="a-1098-19160" test="cda:code[@code='48768-6']">This code SHALL contain exactly one [1..1] @code="48768-6" Payment sources (CONF:1098-19160).</sch:assert>
			<sch:assert id="a-1098-8875" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8875).</sch:assert>
			<sch:assert id="a-1098-19094" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19094).</sch:assert>
			<sch:assert id="a-1098-8878" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1098-8878) such that it SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8879). SHALL contain exactly one [1..1] Policy Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.61:2014-06-09) (CONF:1098-15528).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8897" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8897) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.60" (CONF:1098-10492). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32596).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15395" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15395).</sch:assert>
			<sch:assert id="a-1098-15396" test="cda:code[@code='48768-6']">This code SHALL contain exactly one [1..1] @code="48768-6" Payers (CONF:1098-15396).</sch:assert>
			<sch:assert id="a-1098-7926" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7926).</sch:assert>
			<sch:assert id="a-1098-7927" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7927).</sch:assert>
			<sch:assert id="a-1098-32149" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32149).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7924" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7924) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.18" (CONF:1098-10434). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32597).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors-abstract" abstract="true">
			<sch:assert id="a-1098-31471" test="count(cda:time)=1">SHALL contain exactly one [1..1] time (CONF:1098-31471).</sch:assert>
			<sch:assert id="a-1098-31472" test="count(cda:assignedAuthor)=1">SHALL contain exactly one [1..1] assignedAuthor (CONF:1098-31472).</sch:assert>
			<sch:assert id="a-1098-31473" test="cda:assignedAuthor[count(cda:id) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] id (CONF:1098-31473).
Note: This id may be set equal to (a pointer to) an id on a participant elsewhere in the document (header or entries) or a new author participant can be described here. If the id is pointing to a participant already described elsewhere in the document, assignedAuthor/id is sufficient to identify this participant and none of the remaining details of assignedAuthor are required to be set. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. This id must be a pointer to another author participant.</sch:assert>
			<sch:assert id="a-1098-31477" test="not(cda:assignedAuthor/cda:representedOrganization) or cda:assignedAuthor/cda:representedOrganization[@classCode='ORG']">The representedOrganization, if present, SHALL contain exactly one [1..1] @classCode="ORG" (CONF:1098-31477).</sch:assert>
			<sch:assert id="a-1098-32017" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-32017) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.119" (CONF:1098-32018).</sch:assert>
			<sch:assert id="a-1098-32628-c" test="not(tested)">If the ID isn't referencing an author described elsewhere in the document, then the author components required in US Realm Header are required here as well (CONF:1098-32628).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8590" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8590).</sch:assert>
			<sch:assert id="a-1098-8586" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8586).</sch:assert>
			<sch:assert id="a-1098-8587" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8587).</sch:assert>
			<sch:assert id="a-1098-32427" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-32427).</sch:assert>
			<sch:assert id="a-1098-19098" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19098).</sch:assert>
			<sch:assert id="a-1098-8591" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-8591).</sch:assert>
			<sch:assert id="a-1098-8592" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8592).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8599" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8599) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.46" (CONF:1098-10496). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32605).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8602" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8602).</sch:assert>
			<sch:assert id="a-1098-8604" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8604) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.45" (CONF:1098-10497). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32606).</sch:assert>
			<sch:assert id="a-1098-8609" test="count(cda:subject)=1">SHALL contain exactly one [1..1] subject (CONF:1098-8609).</sch:assert>
			<sch:assert id="a-1098-15244" test="cda:subject[count(cda:relatedSubject)=1]">This subject SHALL contain exactly one [1..1] relatedSubject (CONF:1098-15244).</sch:assert>
			<sch:assert id="a-1098-15246" test="cda:subject/cda:relatedSubject[count(cda:code)=1]">This relatedSubject SHALL contain exactly one [1..1] code (CONF:1098-15246).</sch:assert>
			<sch:assert id="a-1098-15974" test="not(cda:subject/cda:relatedSubject/cda:subject) or cda:subject/cda:relatedSubject/cda:subject[count(cda:administrativeGenderCode)=1]">The subject, if present, SHALL contain exactly one [1..1] administrativeGenderCode (CONF:1098-15974).</sch:assert>
			<sch:assert id="a-1098-8600" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" Cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8600).</sch:assert>
			<sch:assert id="a-1098-8601" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8601).</sch:assert>
			<sch:assert id="a-1098-19099" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19099).</sch:assert>
			<sch:assert id="a-1098-15245" test="cda:subject/cda:relatedSubject[@classCode='PRS']">This relatedSubject SHALL contain exactly one [1..1] @classCode="PRS" Person (CodeSystem: EntityClass urn:oid:2.16.840.1.113883.5.41 STATIC) (CONF:1098-15245).</sch:assert>
			<sch:assert id="a-1098-15247" test="cda:subject/cda:relatedSubject/cda:code[@code]">This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set urn:oid:2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:1098-15247).</sch:assert>
			<sch:assert id="a-1098-15975" test="not(cda:subject/cda:relatedSubject/cda:subject/cda:administrativeGenderCode) or cda:subject/cda:relatedSubject/cda:subject/cda:administrativeGenderCode[@code]">This administrativeGenderCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) urn:oid:2.16.840.1.113883.1.11.1 DYNAMIC (CONF:1098-15975).</sch:assert>
			<sch:assert id="a-1098-32485" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32485).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-32428" test="count(cda:component) &gt; 0">SHALL contain at least one [1..*] component (CONF:1098-32428).</sch:assert>
			<sch:assert id="a-1098-32429" test="cda:component[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']])=1]">Such components SHALL contain exactly one [1..1] Family History Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.46:2014-06-09) (CONF:1098-32429).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15469" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15469).</sch:assert>
			<sch:assert id="a-1098-7934" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7934).</sch:assert>
			<sch:assert id="a-1098-7935" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7935).</sch:assert>
			<sch:assert id="a-1098-15470" test="cda:code[@code='10157-6']">This code SHALL contain exactly one [1..1] @code="10157-6" Family History (CONF:1098-15470).</sch:assert>
			<sch:assert id="a-1098-32481" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32481).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7932" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7932) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.15" (CONF:1098-10388). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32607).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
			<sch:assert id="a-1126-202-c" test="((cda:country='US' or not(cda:country)) and count(cda:city)=1) or cda:country!='US'">SHALL contain exactly one [1..1] city (ValueSet: City urn:oid:2.16.840.1.114222.4.11.973 DYNAMIC) (CONF:1126-202).
Note: City is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the city MAY be present but MAY be bound to different vocabularies. The value for city element SHALL be the "display name", selected from "city" Value Set.</sch:assert>
			<sch:assert id="a-1126-206" test="count(cda:useablePeriod[@xsi:type='IVL_TS']) &gt; 0">SHALL contain at least one [1..*] useablePeriod (CONF:1126-206).
Note: usablePeriod indicates patient’s address history. For example, if patient had multiple prior addresses, then occupancy start (low) and end (high) date need to be provided for each address.</sch:assert>
			<sch:assert id="a-1126-207" test="cda:useablePeriod[@xsi:type='IVL_TS'][count(cda:low)=1]">Such useablePeriods SHALL contain exactly one [1..1] low (CONF:1126-207).
Note: to indicate the time when the patient began living at the address.</sch:assert>
			<sch:assert id="a-1126-208" test="cda:useablePeriod[@xsi:type='IVL_TS'][count(cda:high)=1]">Such useablePeriods SHALL contain zero or one [1..1] high (CONF:1126-208).
Note: to indicate the time when the patient stopped living at the address.</sch:assert>
			<sch:assert id="a-1126-33226-c" test="count(cda:country)=1">SHALL contain exactly one [1..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 (CONF:1126-33226).</sch:assert>
			<sch:assert id="a-1126-33227-c" test="count(cda:postalCode)=1 and (matches(cda:postalCode, '\d{5}') or matches(cda:postalCode, '\d{5}-\d{4}'))">SHALL contain exactly one [1..1] postalCode, which SHOULD be selected from ValueSet PostalCode urn:oid:2.16.840.1.113883.3.88.12.80.2 (CONF:1126-33227).
Note: The expected format for the Postal Code is either NNNNN or NNNNN-NNNN</sch:assert>
			<sch:assert id="a-1126-33228-c" test="count(cda:state)=1">SHALL contain exactly one [1..1] state, which SHOULD be selected from ValueSet StateValueSet urn:oid:2.16.840.1.113883.3.88.12.80.1 (CONF:1126-33228).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors-abstract"/>
			<sch:assert id="a-1126-243" test="count(cda:given) &gt; 0 and cda:given[1][not(@nullFlavor)]">SHALL contain at least one [1..*] given (CONF:1126-243) such that it
Note: This (the first) occurrence of given is used for the first name. SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33033).</sch:assert>
			<sch:assert id="a-1126-244" test="count(cda:family[not(@nullFlavor)])=1">SHALL contain exactly one [1..1] family (CONF:1126-244). This family SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33032).</sch:assert>
			<sch:assert id="a-1126-33240" test="count(cda:given)=1 or (count(cda:given) &gt; 1 and cda:given[2][count(@nullFlavor) &lt; 2])">SHALL contain at least one [1..*] given (CONF:1126-33240) such that it
Note: This (the second) occurrence of given is used for the middle name or middle initial. MAY contain zero or one [0..1] @nullFlavor (CONF:1126-33241).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33250" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.21'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33250) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.21" (CONF:1126-33251). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33951).</sch:assert>
			<sch:assert id="a-1126-33252" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-33252).</sch:assert>
			<sch:assert id="a-1126-33253" test="cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Problem Concern Act (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.22:2014-08-08) (CONF:1126-33253).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-CLOSEDTEMPLATE">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL-abstract" abstract="true">
			<!-- Change one of the two not(@root = '2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09') to not(@root = '2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09') so that we don't fail when including the required template oid for the p[arent of template 2.16.840.1.113883.10.20.22.2.5.1

Before Change: 
      <sch:assert id="a-1126-4278-CL" test="count(.//cda:templateId[not(@root = '2.16.840.1.113883.10.13.21' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.13.22' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.13.23' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09')])=0">'urn:hl7ii:2.16.840.1.113883.10.13.21:2014-08-08' is a closed template, only defined templates are allowed.</sch:assert>

After: -->
			<sch:assert id="a-1126-4278-CL" test="count(.//cda:templateId[not(@root = '2.16.840.1.113883.10.13.21' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.13.22' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.13.23' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09')])=0">'urn:hl7ii:2.16.840.1.113883.10.13.21:2014-08-08' is a closed template, only defined templates are allowed.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32678" test="count(cda:entry[count(cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32678) such that it SHALL contain exactly one [1..1] Planned Encounter (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.20:2014-08-08) (CONF:1126-32679).</sch:assert>
			<sch:assert id="a-1126-33020" test="count(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-33020) such that it SHALL contain exactly one [1..1] Planned Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.42:2014-06-09) (CONF:1126-33021).</sch:assert>
			<sch:assert id="a-1126-33022" test="count(cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-33022) such that it SHALL contain exactly one [1..1] Planned Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09) (CONF:1126-33023).</sch:assert>
			<sch:assert id="a-1126-33056" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.9'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33056) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.9" (CONF:1126-33057). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33950).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32666" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32666).</sch:assert>
			<sch:assert id="a-1126-32667" test="cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Medication Activity (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.14:2014-08-08) (CONF:1126-32667).</sch:assert>
			<sch:assert id="a-1126-33064" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.13'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33064) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.13" (CONF:1126-33065). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33949).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32662" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32662).</sch:assert>
			<sch:assert id="a-1126-32663" test="cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Medication Activity (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.14:2014-08-08) (CONF:1126-32663).</sch:assert>
			<sch:assert id="a-1126-33062" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.12'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33062) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.12" (CONF:1126-33063). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33948).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32676" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32676).</sch:assert>
			<sch:assert id="a-1126-32677" test="cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Procedure Activity Procedure (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.15:2014-08-08) (CONF:1126-32677).</sch:assert>
			<sch:assert id="a-1126-33058" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.10'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33058) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.10" (CONF:1126-33059). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33952).</sch:assert>
			<sch:assert id="a-1126-33579" test="count(cda:component)=1">SHALL contain exactly one [1..1] component (CONF:1126-33579).</sch:assert>
			<sch:assert id="a-1126-33580" test="cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']])=1]">This component SHALL contain exactly one [1..1] Radiation Oncology Section (identifier: urn:hl7ii:2.16.840.1.113883.10.13.24:2014-08-08) (CONF:1126-33580).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32641" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-32641).</sch:assert>
			<sch:assert id="a-1126-32642" test="cda:templateId[@root='2.16.840.1.113883.10.13.24']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.24" (CONF:1126-32642).</sch:assert>
			<sch:assert id="a-1126-32643" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-32643).</sch:assert>
			<sch:assert id="a-1126-32644" test="cda:code[@code='34832-6' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="34832-6" Radiation Oncology Note (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-32644).</sch:assert>
			<sch:assert id="a-1126-32645" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1126-32645).</sch:assert>
			<sch:assert id="a-1126-32646" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1126-32646).</sch:assert>
			<sch:assert id="a-1126-33395" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entry (CONF:1126-33395) such that it SHALL contain exactly one [1..1] Radiation Regional Treatment Modality Organizer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.29:2014-08-08) (CONF:1126-33653).</sch:assert>
			<sch:assert id="a-1126-33652" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entry (CONF:1126-33652) such that it SHALL contain exactly one [1..1] Radiation Boost Modality Organizer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.30:2014-08-08) (CONF:1126-33654).</sch:assert>
			<sch:assert id="a-1126-33953" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33953).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32664" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-32664) such that it
Note: The reason for administering medication SHALL be provided for all cancer-related medications. The reason for administering medication MAY be provided for all NON-cancer-related medications. If the reason is not known, then appropriate nullFlavor SHALL be used. SHALL contain exactly one [1..1] @typeCode="RSON" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-32665). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33211).</sch:assert>
			<sch:assert id="a-1126-33066" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.14'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33066) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.14" (CONF:1126-33067). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33959).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32672" test="count(cda:participant[@typeCode='LOC'][count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]) &gt; 0">SHALL contain at least one [1..*] participant (CONF:1126-32672) such that it SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-32673). SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33024).</sch:assert>
			<sch:assert id="a-1126-33068" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.15'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33068) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.15" (CONF:1126-33069). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33965).</sch:assert>
			<sch:assert id="a-1126-33212" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33212) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1126-33213). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33214).</sch:assert>
			<sch:assert id="a-1126-33248" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-33248).</sch:assert>
			<sch:assert id="a-1126-33249" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1126-33249).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33929-branch-61244" test="count(cda:id[@root='2.16.840.1.113883.4.6']) &gt; 0">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33929) such that it SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33932).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-addr-1126-33934-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-personName-1126-33936-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33204" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1126-33204).</sch:assert>
			<sch:assert id="a-1126-33205" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33205).</sch:assert>
			<sch:assert id="a-1126-33215" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-33215).
Note: The "id" is intended to reference a problem recorded in the Problem Observation, Medication Activity, Procedure Activity, Radiation Boost Modality Procedure, and Radiation Regional Treatment Modality Procedure, by matching the Observation's id element. When a related problem has not been recorded, then use a null flavor such as "NA"  on this id element to indicate there is not a related problem documented (@nullFlavor="NA").</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-33202" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.19'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33202) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.19" (CONF:1126-33206). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33958).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33216" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.20'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33216) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.20" (CONF:1126-33217). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33962).</sch:assert>
			<sch:assert id="a-1126-33218" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:1126-33218).</sch:assert>
			<sch:assert id="a-1126-33219" test="@moodCode">SHALL contain exactly one [1..1] @moodCode (CONF:1126-33219).</sch:assert>
			<sch:assert id="a-1126-33220" test="count(cda:performer[@typeCode='PRF'][count(cda:assignedEntity)=1])=1">SHALL contain exactly one [1..1] performer (CONF:1126-33220) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33937). SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33980).</sch:assert>
			<sch:assert id="a-1126-33222" test="count(cda:participant[@typeCode='LOC'][count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]) &gt; 0">SHALL contain at least one [1..*] participant (CONF:1126-33222) such that it SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33982). SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33983).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']">
			<sch:assert id="a-1126-33938-branch-49430" test="cda:assignedEntity[count(cda:id[@root='2.16.840.1.113883.4.6']) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33938) such that it SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33941).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-addr-1126-33943-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-personName-1126-33945-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF']/cda:assignedEntity/cda:assignedPerson">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		 </sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.22'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.22" (CONF:1126-33256). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33963).</sch:assert>
			<sch:assert id="a-1126-33255" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33255).</sch:assert>
			<sch:assert id="a-1126-33257" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33257).</sch:assert>
			<sch:assert id="a-1126-33258" test="count(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33258) such that it SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33259).
SHALL contain exactly one [1..1] Problem Observation (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.23:2014-08-08) (CONF:1126-33260).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33261" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33261).</sch:assert>
			<sch:assert id="a-1126-33262" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33262).</sch:assert>
			<sch:assert id="a-1126-33263" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.23'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33263) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.23" (CONF:1126-33264). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33964).</sch:assert>
			<sch:assert id="a-1126-33265" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33265).</sch:assert>
			<sch:assert id="a-1126-33267" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code (CONF:1126-33267).</sch:assert>
			<sch:assert id="a-1126-33268-c" test="true()">@code in a problem observation *SHALL* be selected from:
(a) *Problem Value Set* (Value Set OID: 2.16.840.1.113883.3.88.12.3221.7.4) or
(b) *ICD-10-CM* (CodeSystem: 2.16.840.1.113883.6.90) or
(c) *ICD-9-CM* (CodeSystem: 2.16.840.1.113883.6.103) (CONF:1126-33268).
Note: Problem Value Set a subset of SNOMED CT CodeSystem: 2.16.840.1.113883.6.96).</sch:assert>
			<sch:assert id="a-1126-33269" test="cda:value[@xsi:type='CD'][@codeSystem]">This value SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33269).</sch:assert>
			<sch:assert id="a-1126-33270" test="cda:value[@xsi:type='CD'][@displayName]">This value SHALL contain exactly one [1..1] @displayName (CONF:1126-33270).</sch:assert>
			<sch:assert id="a-1126-33271-c" test="true()">@displayName associated with the code for problem *SHALL* be selected from:
(a) *Problem Value Set* (Value Set OID: 2.16.840.1.113883.3.88.12.3221.7.4) or
(b) *ICD-10-CM* (CodeSystem: 2.16.840.1.113883.6.90) or
(c) *ICD-9-CM* (CodeSystem: 2.16.840.1.113883.6.103) (CONF:1126-33271).</sch:assert>
			<sch:assert id="a-1126-33601-c" test="cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.90'] or cda:code[@codeSystem='2.16.840.1.113883.6.103']">@codeSystem associated with the code for problem *SHALL* be selected from: 
(a) *SNOMED-CT* (Code System: 2.16.840.1.113883.6.96) or
(b) *ICD-10-CM* (CodeSystem: 2.16.840.1.113883.6.90) or
(c) *ICD-9-CM* (CodeSystem: 2.16.840.1.113883.6.103) (CONF:1126-33601).
Note: Problem Value Set a subset of SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33317" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33317).</sch:assert>
			<sch:assert id="a-1126-33318" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33318).</sch:assert>
			<sch:assert id="a-1126-33319" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1126-33319).</sch:assert>
			<sch:assert id="a-1126-33321" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33321).</sch:assert>
			<sch:assert id="a-1126-33322" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33322).</sch:assert>
			<sch:assert id="a-1126-33323" test="cda:templateId[@root='2.16.840.1.113883.10.13.27']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.27" (CONF:1126-33323).</sch:assert>
			<sch:assert id="a-1126-33324" test="cda:code[@code='21958-4' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21958-4" Regional radiation treatment Dose (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33324).</sch:assert>
			<sch:assert id="a-1126-33325" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33325).</sch:assert>
			<sch:assert id="a-1126-33326" test="cda:value[@xsi:type='PQ'][@value]">This value SHALL contain exactly one [1..1] @value (CONF:1126-33326).</sch:assert>
			<sch:assert id="a-1126-33327" test="cda:value[@xsi:type='PQ'][not(@unit='cGy') or @unit='cGy']">This value SHALL contain zero or one [0..1] @unit="cGy" centiGray (CodeSystem: UCUM urn:oid:2.16.840.1.113883.6.8) (CONF:1126-33327).</sch:assert>
			<sch:assert id="a-1126-33584" test="not(cda:statusCode) or cda:statusCode[@code='completed']">The statusCode, if present, SHALL contain exactly one [1..1] @code="completed" Completed (CONF:1126-33584).</sch:assert>
			<sch:assert id="a-1126-33971" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33971).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors-abstract" abstract="true">
			<sch:let name="origTextValue" value="cda:code/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1126-33328" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33328).</sch:assert>
			<sch:assert id="a-1126-33329" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33329).
Note: Procedure code that identifies the radiation treatment—boost modality used to deliver the most clinically significant dose to the primary volume of interest during the first course of treatment.</sch:assert>
			<sch:assert id="a-1126-33335" test="not(cda:performer) or cda:performer[count(cda:assignedEntity)=1]">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33335).</sch:assert>
			<sch:assert id="a-1126-33339" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" procedure (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33339).</sch:assert>
			<sch:assert id="a-1126-33340" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33340).</sch:assert>
			<sch:assert id="a-1126-33341" test="cda:templateId[@root='2.16.840.1.113883.10.13.26']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.26" (CONF:1126-33341).</sch:assert>
			<sch:assert id="a-1126-33342" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-33342).</sch:assert>
			<sch:assert id="a-1126-33343-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33343).</sch:assert>
			<sch:assert id="a-1126-33345" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-33345).</sch:assert>
			<sch:assert id="a-1126-33347" test="not(cda:targetSiteCode) or cda:targetSiteCode[@code]">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1126-33347).</sch:assert>
			<sch:assert id="a-1126-33348" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33348).</sch:assert>
			<sch:assert id="a-1126-33349" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHALL contain exactly one [1..1] addr (CONF:1126-33349).</sch:assert>
			<sch:assert id="a-1126-33350" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:telecom)=1]">This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:1126-33350).</sch:assert>
			<sch:assert id="a-1126-33351" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHALL contain at least one [1..*] id (CONF:1126-33351).</sch:assert>
			<sch:assert id="a-1126-33353" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:telecom)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1126-33353).</sch:assert>
			<sch:assert id="a-1126-33354" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:addr)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1126-33354).</sch:assert>
			<sch:assert id="a-1126-33355" test="not(cda:participant) or cda:participant[@typeCode='LOC']">The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33355).</sch:assert>
			<sch:assert id="a-1126-33356" test="not(cda:participant) or cda:participant[count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]">The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33356).</sch:assert>
			<sch:assert id="a-1126-33392" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33392) such that it SHALL contain exactly one [1..1] @typeCode="RSON" has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33393). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33394).</sch:assert>
			<sch:assert id="a-1126-33587-c" test="count(cda:code[@code])=1">This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33587).</sch:assert>
			<sch:assert id="a-1126-33588" test="cda:code[@codeSystem]">This code SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33588).</sch:assert>
			<sch:assert id="a-1126-33590-c" test="cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.14'] or cda:code[@codeSystem='2.16.840.1.113883.6.4']">This codeSystem in a Radiation Regional Treatment Modality SHOULD be selected from HCPCS (CodeSystem: 2.16.840.1.113883.6.14) and MAY be selected from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1126-33590).</sch:assert>
			<sch:assert id="a-1126-33591" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1126-33591).</sch:assert>
			<sch:assert id="a-1126-33592" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:low)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1126-33592).</sch:assert>
			<sch:assert id="a-1126-33593" test="not(cda:targetSiteCode) or cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.96']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33593).</sch:assert>
			<sch:assert id="a-1126-33661-c" test="count(cda:code[@displayName])=1">This code SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33661).</sch:assert>
			<sch:assert id="a-1126-33721" test="not(cda:targetSiteCode) or cda:targetSiteCode[@sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.88.12.3221.8.9" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33721).</sch:assert>
			<sch:assert id="a-1126-33724" test="cda:code[@sdtc:valueSet='2.16.840.1.113883.3.520.4.23']">This code SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.23" (CONF:1126-33724).</sch:assert>
			<sch:assert id="a-1126-33970" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33970).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors-abstract" abstract="true">
			<sch:let name="origTextValue" value="cda:code/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1126-33361" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33361).</sch:assert>
			<sch:assert id="a-1126-33362" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33362).
Note: Procedure code that identifies the dominant modality of radiation therapy used to deliver the clinically most significant regional dose to the primary volume of interest during the first course of treatment.</sch:assert>
			<sch:assert id="a-1126-33368" test="not(cda:performer) or cda:performer[count(cda:assignedEntity)=1]">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33368).</sch:assert>
			<sch:assert id="a-1126-33371" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33371) such that it SHALL contain exactly one [1..1] @typeCode="RSON" has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33390). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33391).</sch:assert>
			<sch:assert id="a-1126-33372" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33372).</sch:assert>
			<sch:assert id="a-1126-33373" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33373).</sch:assert>
			<sch:assert id="a-1126-33374" test="cda:templateId[@root='2.16.840.1.113883.10.13.25']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.25" (CONF:1126-33374).</sch:assert>
			<sch:assert id="a-1126-33375" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-33375).</sch:assert>
			<sch:assert id="a-1126-33376-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33376).</sch:assert>
			<sch:assert id="a-1126-33378" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-33378).</sch:assert>
			<sch:assert id="a-1126-33380" test="not(cda:targetSiteCode) or cda:targetSiteCode[@code]">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1126-33380).</sch:assert>
			<sch:assert id="a-1126-33381" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33381).</sch:assert>
			<sch:assert id="a-1126-33382" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHALL contain exactly one [1..1] addr (CONF:1126-33382).</sch:assert>
			<sch:assert id="a-1126-33383" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:telecom)=1]">This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:1126-33383).</sch:assert>
			<sch:assert id="a-1126-33384" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHALL contain at least one [1..*] id (CONF:1126-33384).</sch:assert>
			<sch:assert id="a-1126-33386" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:telecom)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1126-33386).</sch:assert>
			<sch:assert id="a-1126-33387" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:addr)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1126-33387).</sch:assert>
			<sch:assert id="a-1126-33388" test="not(cda:participant) or cda:participant[@typeCode='LOC']">The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33388).</sch:assert>
			<sch:assert id="a-1126-33389" test="not(cda:participant) or cda:participant[count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]">The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33389).</sch:assert>
			<sch:assert id="a-1126-33594-c" test="count(cda:code[@code])=1">This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33594).</sch:assert>
			<sch:assert id="a-1126-33595" test="cda:code[@codeSystem]">This code SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33595).</sch:assert>
			<sch:assert id="a-1126-33597-c" test="cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4']">This codeSystem in a Radiation Regional Treatment Modality *SHOULD* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) *MAY* be selected from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1126-33597).</sch:assert>
			<sch:assert id="a-1126-33598" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1126-33598).</sch:assert>
			<sch:assert id="a-1126-33599" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:low)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1126-33599).</sch:assert>
			<sch:assert id="a-1126-33600" test="not(cda:targetSiteCode) or cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.96']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33600).</sch:assert>
			<sch:assert id="a-1126-33662-c" test="count(cda:code[@displayName])=1">This code SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33662).</sch:assert>
			<sch:assert id="a-1126-33722" test="not(cda:targetSiteCode) or cda:targetSiteCode[@sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.88.12.3221.8.9" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33722).</sch:assert>
			<sch:assert id="a-1126-33723" test="cda:code[@sdtc:valueSet='2.16.840.1.113883.3.520.4.23']">This code SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.23" (CONF:1126-33723).</sch:assert>
			<sch:assert id="a-1126-33975" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33975).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-personName-1126-33586-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33621" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33621).</sch:assert>
			<sch:assert id="a-1126-33622" test="cda:templateId[@root='2.16.840.1.113883.10.13.28']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.28" (CONF:1126-33622).</sch:assert>
			<sch:assert id="a-1126-33626" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33626).</sch:assert>
			<sch:assert id="a-1126-33628" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1126-33628).</sch:assert>
			<sch:assert id="a-1126-33629" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33629).</sch:assert>
			<sch:assert id="a-1126-33630" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33630).</sch:assert>
			<sch:assert id="a-1126-33632" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33632).</sch:assert>
			<sch:assert id="a-1126-33633" test="not(cda:statusCode) or cda:statusCode[@code='completed']">The statusCode, if present, SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1126-33633).</sch:assert>
			<sch:assert id="a-1126-33634" test="cda:value[@xsi:type='PQ'][@value]">This value SHALL contain exactly one [1..1] @value (CONF:1126-33634).</sch:assert>
			<sch:assert id="a-1126-33635" test="cda:value[@xsi:type='PQ'][@unit='cGy']">This value SHALL contain exactly one [1..1] @unit="cGy" centiGray (CodeSystem: UCUM urn:oid:2.16.840.1.113883.6.8) (CONF:1126-33635).</sch:assert>
			<sch:assert id="a-1126-33966" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33966).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33636" test="count(cda:component) &gt; 0">SHALL contain at least one [1..*] component (CONF:1126-33636).</sch:assert>
			<sch:assert id="a-1126-33637" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33637).</sch:assert>
			<sch:assert id="a-1126-33638" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33638).</sch:assert>
			<sch:assert id="a-1126-33639" test="cda:component[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']])=1]">Such components SHALL contain exactly one [1..1] Radiation Regional Treatment Modality Procedure (identifier: urn:hl7ii:2.16.840.1.113883.10.13.25:2014-08-08) (CONF:1126-33639).</sch:assert>
			<sch:assert id="a-1126-33648" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33648).</sch:assert>
			<sch:assert id="a-1126-33649" test="cda:code[@code='21964-2' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21964-2" Modality Radiation treatment (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33649).</sch:assert>
			<sch:assert id="a-1126-33650" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1 " LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33650).</sch:assert>
			<sch:assert id="a-1126-33651" test="cda:component[@typeCode='COMP']">Such components SHALL contain exactly one [1..1] @typeCode="COMP" component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33651).</sch:assert>
			<sch:assert id="a-1126-33972" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33972).</sch:assert>
			<sch:assert id="a-1126-33973" test="cda:templateId[@root='2.16.840.1.113883.10.13.29']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.29" (CONF:1126-33973).</sch:assert>
			<sch:assert id="a-1126-33974" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33974).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33640" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33640).</sch:assert>
			<sch:assert id="a-1126-33641" test="count(cda:component) &gt; 0">SHALL contain at least one [1..*] component (CONF:1126-33641).</sch:assert>
			<sch:assert id="a-1126-33642" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33642).</sch:assert>
			<sch:assert id="a-1126-33643" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33643).</sch:assert>
			<sch:assert id="a-1126-33644" test="cda:code[@code='42128-9' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="42128-9" Boost radiation treatment modality Radiation treatment (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33644).</sch:assert>
			<sch:assert id="a-1126-33645" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1 " LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33645).</sch:assert>
			<sch:assert id="a-1126-33646" test="cda:component[@typeCode='COMP']">Such components SHALL contain exactly one [1..1] @typeCode="COMP" component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33646).</sch:assert>
			<sch:assert id="a-1126-33647" test="cda:component[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']])=1]">Such components SHALL contain exactly one [1..1] Radiation Boost Modality Procedure (identifier: urn:hl7ii:2.16.840.1.113883.10.13.26:2014-08-08) (CONF:1126-33647).</sch:assert>
			<sch:assert id="a-1126-33967" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33967).</sch:assert>
			<sch:assert id="a-1126-33968" test="cda:templateId[@root='2.16.840.1.113883.10.13.30']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.30" (CONF:1126-33968).</sch:assert>
			<sch:assert id="a-1126-33969" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33969).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors-abstract" abstract="true">
			<sch:assert id="a-1169-32704-c" test="((count(@nullFlavor)=1) or count(cda:component[@typeCode='COMP'][@contextConductionInd='true'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']])=1])=1)">If organizer/@nullFlavor is not present:
SHALL contain exactly one [1..1] component (CONF:1169-32704) such that it SHALL contain exactly one [1..1] Usual Industry History (identifier: urn:hl7ii:2.16.840.1.113883.10.13.33:2015-01-29) (CONF:1169-32707). SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:1169-32705). SHALL contain exactly one [1..1] @contextConductionInd="true" (CONF:1169-32706).</sch:assert>
			<sch:assert id="a-1169-32712-c" test="((count(@nullFlavor)=1) or count(cda:component[@typeCode='COMP'][@contextConductionInd='true'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']])=1])=1)">If organizer/@nullFlavor is not present:
SHALL contain exactly one [1..1] component (CONF:1169-32712) such that it SHALL contain exactly one [1..1] Usual Occupation History (identifier: urn:hl7ii:2.16.840.1.113883.10.13.34:2015-01-29) (CONF:1169-32715). SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:1169-32713). SHALL contain exactly one [1..1] @contextConductionInd="true" (CONF:1169-32714).</sch:assert>
			<sch:assert id="a-1169-33070" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33070).</sch:assert>
			<sch:assert id="a-1169-32701" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" (CONF:1169-32701).</sch:assert>
			<sch:assert id="a-1169-32702" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1169-32702).</sch:assert>
			<sch:assert id="a-1169-33071" test="cda:templateId[@root='2.16.840.1.113883.10.13.16']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.16" (CONF:1169-33071).</sch:assert>
			<sch:assert id="a-1169-33957" test="cda:templateId[@extension='2015-01-29']">This templateId SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-33957).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34005" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34005).</sch:assert>
			<sch:assert id="a-1169-34006" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CONF:1169-34006).</sch:assert>
			<sch:assert id="a-1169-34007" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1169-34007).</sch:assert>
			<sch:assert id="a-1169-34008" test="cda:code[@code='21844-6' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21844-6" Usual Industry Hx (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34008).</sch:assert>
			<sch:assert id="a-1169-34009" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34009).</sch:assert>
			<sch:assert id="a-1169-34010" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-34010).</sch:assert>
			<sch:assert id="a-1169-34013" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34013).</sch:assert>
			<sch:assert id="a-1169-34014-c" test="cda:value[@xsi:type='CD'][@code or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet PHVS_Industry_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7187 STATIC (CONF:1169-34014).</sch:assert>
			<sch:assert id="a-1169-34015-c" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.114222.4.5.315' or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.114222.4.5.315" Industry CDC Census 2010 (CodeSystem: Industry CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.315) (CONF:1169-34015).</sch:assert>
			<sch:assert id="a-1169-34016-c" test="cda:value[@xsi:type='CD'][@displayName or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet PHVS_Industry_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7187 STATIC (CONF:1169-34016).</sch:assert>
			<sch:assert id="a-1169-34017-c" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.114222.4.11.7187' or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.114222.4.11.7187" (CodeSystem: Industry CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.315) (CONF:1169-34017).</sch:assert>
			<sch:assert id="a-1169-34021-c" test="not(Tested)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34021).</sch:assert>
			<sch:assert id="a-1169-34377" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.33'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34377) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.33" (CONF:1169-34378). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-34379).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors-abstract" abstract="true">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-34022" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CONF:1169-34022).</sch:assert>
			<sch:assert id="a-1169-34023" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1169-34023).</sch:assert>
			<sch:assert id="a-1169-34024" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34024).</sch:assert>
			<sch:assert id="a-1169-34025" test="cda:code[@code='21843-8' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21843-8" Usual occupation Hx (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34025).</sch:assert>
			<sch:assert id="a-1169-34026" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34026).</sch:assert>
			<sch:assert id="a-1169-34027" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-34027).</sch:assert>
			<sch:assert id="a-1169-34030" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34030).</sch:assert>
			<sch:assert id="a-1169-34031-c" test="cda:value[@xsi:type='CD'][@code or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet PHVS_Occupation_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7186 STATIC (CONF:1169-34031).</sch:assert>
			<sch:assert id="a-1169-34032-c" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.114222.4.5.314' or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.114222.4.5.314" Occupation CDC Census 2010 (CodeSystem: Occupation CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.314) (CONF:1169-34032).</sch:assert>
			<sch:assert id="a-1169-34033-c" test="cda:value[@xsi:type='CD'][@displayName or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet PHVS_Occupation_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7186 STATIC (CONF:1169-34033).</sch:assert>
			<sch:assert id="a-1169-34034-c" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.114222.4.11.7186' or @nullFlavor]">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.114222.4.11.7186" (CodeSystem: Occupation CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.314) (CONF:1169-34034).</sch:assert>
			<sch:assert id="a-1169-34038-c" test="cda:value[@xsi:type='CD'][@nullFlavor] or count(cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34038).</sch:assert>
			<sch:assert id="a-1169-34380" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.34'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34380) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.34" (CONF:1169-34381). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-34382).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1169-32699" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2015-01-29']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1169-32699) such that it SHALL contain exactly one [1..1] Employment History Observation Organizer (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.16:2015-01-29) (CONF:1169-32700).</sch:assert>
			<sch:assert id="a-1169-33060" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.11'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33060) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.11" (CONF:1169-33061). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-33954).</sch:assert>
			<sch:assert id="a-1169-33884" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.38' and @extension = '2014-06-09']])=1])=0">SHALL NOT contain [0..0] entry (CONF:1169-33884) such that it SHALL contain exactly one [1..1] Social History Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.38:2014-06-09) (CONF:1169-33889).</sch:assert>
			<sch:assert id="a-1169-33885" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.109']])=1])=0">SHALL NOT contain [0..0] entry (CONF:1169-33885) such that it SHALL contain exactly one [1..1] Characteristics of Home Environment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.109) (CONF:1169-33890).</sch:assert>
			<sch:assert id="a-1169-33886" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.111']])=1])=0">SHALL NOT contain [0..0] entry (CONF:1169-33886) such that it SHALL contain exactly one [1..1] Cultural and Religious Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.111) (CONF:1169-33891).</sch:assert>
			<sch:assert id="a-1169-33887" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.72']])=1])=0">SHALL NOT contain [0..0] entry (CONF:1169-33887) such that it SHALL contain exactly one [1..1] Caregiver Characteristics (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.72) (CONF:1169-33892).</sch:assert>
			<sch:assert id="a-1169-33888" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.15.3.8']])=1])=0">SHALL NOT contain [0..0] entry (CONF:1169-33888) such that it SHALL contain exactly one [1..1] Pregnancy Observation (identifier: urn:oid:2.16.840.1.113883.10.20.15.3.8) (CONF:1169-33893).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors-abstract" abstract="true">
			<sch:let name="encompassingEncounter_1169_212" value="cda:componentOf/cda:encompassingEncounter[count(cda:encounterParticipant[@typeCode='REF'][count(cda:assignedEntity)=1])=1]"/>
			<sch:let name="encompassingEncounter_1169_34264" value="cda:componentOf/cda:encompassingEncounter[count(cda:encounterParticipant[count(cda:assignedEntity)=1])=1][count(cda:location[count(cda:healthCareFacility)=1])=1]"/>
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1169-210" test="count(cda:componentOf)=1">SHALL contain exactly one [1..1] componentOf (CONF:1169-210).</sch:assert>
			<sch:assert id="a-1169-211" test="cda:componentOf[count(cda:encompassingEncounter)=1] and ($encompassingEncounter_1169_212 or $encompassingEncounter_1169_34264)">This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:1169-211). The encompassingEncounter SHALL Contain Either:</sch:assert>
			<sch:assert id="a-1169-212-c" test="$encompassingEncounter_1169_212">This encompassingEncounter SHALL contain exactly one [1..1] encounterParticipant (CONF:1169-212) such that it
Note: This element records the provider that referred the patient to the reporting facility. This element SHALL be provided in the header of the CDA document in the event the patient was referred to this ambulatory healthcare provider.  SHALL contain exactly one [1..1] assignedEntity (CONF:1169-214). SHALL contain exactly one [1..1] @typeCode="REF" (CONF:1169-217).</sch:assert>
			<sch:assert id="a-1169-33894" test="cda:componentOf/cda:encompassingEncounter[count(cda:location)=1]">This encompassingEncounter SHALL contain exactly one [1..1] location (CONF:1169-33894).</sch:assert>
			<sch:assert id="a-1169-33895" test="cda:componentOf/cda:encompassingEncounter/cda:location[count(cda:healthCareFacility)=1]">This location SHALL contain exactly one [1..1] healthCareFacility (CONF:1169-33895) such that it</sch:assert>
			<sch:assert id="a-1169-220" test="count(cda:recordTarget) &gt; 0">SHALL contain at least one [1..*] recordTarget (CONF:1169-220).</sch:assert>
			<sch:assert id="a-1169-221" test="cda:recordTarget[count(cda:patientRole)=1]">Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:1169-221).</sch:assert>
			<sch:assert id="a-1169-222" test="cda:recordTarget/cda:patientRole[count(cda:patient)=1]">This patientRole SHALL contain exactly one [1..1] patient (CONF:1169-222).</sch:assert>
			<sch:assert id="a-1169-33542" test="cda:recordTarget/cda:patientRole[count(cda:id[@root='2.16.840.1.113883.4.1'])=1]">This patientRole SHALL contain exactly one [1..1] id (CONF:1169-33542) such that it
Note: This field SHALL be used for Social Security Number (SSN). SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.1" (CONF:1169-33543).
Note: This root OID is assigning authority for Social Security Number (SSN).</sch:assert>
			<sch:assert id="a-1169-33544" test="cda:recordTarget/cda:patientRole[count(cda:id) &gt; 0]">This patientRole SHALL contain at least one [1..*] id (CONF:1169-33544).
Note: This field SHALL be used for Medical Record Number (MRN).</sch:assert>
			<sch:assert id="a-1169-32655-c" test="cda:recordTarget/cda:patientRole[count(cda:addr) &gt; 0]">This patientRole SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.17:2014-08-08) (CONF:1169-32655).
Note: SHALL provide ALL addresses for that patient over time. In other words, ALL historical and current addresses where patient has or is residing SHALL be provided.  Note: The intent of this requirement is for the EHR system to have the capability to capture addresses over time when reported. Physicians are not expected to obtain an address history during the patient visit/encounter.</sch:assert>
			<sch:assert id="a-1169-32647" test="count(cda:component)=1">SHALL contain exactly one [1..1] component (CONF:1169-32647).</sch:assert>
			<sch:assert id="a-1169-32648" test="cda:component[count(cda:structuredBody)=1]">This component SHALL contain exactly one [1..1] structuredBody (CONF:1169-32648).</sch:assert>
			<sch:assert id="a-1169-32656" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1169-32656).</sch:assert>
			<sch:assert id="a-1169-33025" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-33025).</sch:assert>
			<sch:assert id="a-1169-33027" test="count(cda:id)=1">SHALL contain exactly one [1..1] id (CONF:1169-33027).</sch:assert>
			<sch:assert id="a-1169-33054" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.1'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33054) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.1" (CONF:1169-33055). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-33946).</sch:assert>
			<sch:assert id="a-1169-33229" test="count(cda:author[count(cda:assignedAuthor[count(cda:assignedPerson)=1])=1])=1">SHALL contain exactly one [1..1] author (CONF:1169-33229) such that it SHALL contain exactly one [1..1] assignedAuthor (CONF:1169-33230). This assignedAuthor SHALL contain exactly one [1..1] assignedPerson (CONF:1169-33233).
Note: Author information needs to be provided in 2 separate instances of author participation for both person and device playing the role of author</sch:assert>
			<sch:assert id="a-1169-33234" test="count(cda:custodian)=1">SHALL contain exactly one [1..1] custodian (CONF:1169-33234).</sch:assert>
			<sch:assert id="a-1169-33235" test="cda:custodian[count(cda:assignedCustodian)=1]">This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:1169-33235).</sch:assert>
			<sch:assert id="a-1169-33236" test="cda:custodian/cda:assignedCustodian[count(cda:representedCustodianOrganization)=1]">This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:1169-33236).</sch:assert>
			<sch:assert id="a-1169-33686" test="count(cda:author[count(cda:assignedAuthor[count(cda:assignedAuthoringDevice)=1])=1])=1">SHALL contain exactly one [1..1] author (CONF:1169-33686) such that it SHALL contain exactly one [1..1] assignedAuthor (CONF:1169-33687). This assignedAuthor SHALL contain exactly one [1..1] assignedAuthoringDevice (CONF:1169-33690).
Note: Author information needs to be provided in 2 separate instances of author participation for both person and device playing the role of author</sch:assert>
			<sch:assert id="a-1169-33906" test="not(cda:documentationOf) or cda:documentationOf[count(cda:serviceEvent)=1]">The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1169-33906).</sch:assert>
			<sch:assert id="a-1169-33978-c" test="not(cda:component/cda:structuredBody/cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' or @root='2.16.840.1.113883.10.20.22.2.8' or @root='2.16.840.1.113883.10.20.22.2.15' or @root='2.16.840.1.113883.10.13.12' or @root='2.16.840.1.113883.10.20.22.2.38' or @root='2.16.840.1.113883.10.13.13' or @root='2.16.840.1.113883.10.20.22.2.1.1' or @root='2.16.840.1.113883.10.20.22.2.1' or @root='2.16.840.1.113883.10.20.22.2.18' or @root='2.16.840.1.113883.10.13.9' or @root='2.16.840.1.113883.10.20.22.2.10' or @root='2.16.840.1.113883.10.13.21' or @root='2.16.840.1.113883.10.20.22.2.5' or @root='2.16.840.1.113883.10.20.22.2.5.1' or @root='2.16.840.1.113883.10.13.10' or @root='2.16.840.1.113883.10.20.22.2.7' or @root='2.16.840.1.113883.10.20.22.2.7.1' or @root='2.16.840.1.113883.10.20.22.2.3.1' or @root='2.16.840.1.113883.10.13.11' or @root='2.16.840.1.113883.10.20.22.2.17' or @root='2.16.840.1.113883.10.20.22.2.4.1']])=0])">This structuredBody SHALL NOT contain [0..0] any other component sections than those identified above (CONF:1169-33978).</sch:assert>
			<sch:assert id="a-1169-32657" test="cda:code[@code='72134-0' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="72134-0" Cancer event report (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32657).</sch:assert>
			<sch:assert id="a-1169-33042" test="cda:code[not(@nullFlavor)]">This code SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33042).</sch:assert>
			<sch:assert id="a-1169-0" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1169-0).</sch:assert>
			<sch:assert id="a-1169-33026" test="cda:effectiveTime[not(@nullFlavor)]">This effectiveTime SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33026).</sch:assert>
			<sch:assert id="a-1169-33545-c" test="not(tested)">This id *SHALL* be a globally unique identifier for the document (CONF:1169-33545).</sch:assert>
			<sch:assert id="a-1169-33237-c" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:addr)=1]">This representedCustodianOrganization SHALL contain exactly one [1..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33237).</sch:assert>
			<sch:assert id="a-1169-33577" test="count(cda:setId)=1">SHALL contain exactly one [1..1] setId (CONF:1169-33577).</sch:assert>
			<sch:assert id="a-1169-33578" test="count(cda:versionNumber)=1">SHALL contain exactly one [1..1] versionNumber (CONF:1169-33578).</sch:assert>
			<sch:assert id="a-1169-34264-c" test="$encompassingEncounter_1169_34264">Or encompassingEncounter SHALL Contain:
This encompassingEncounter SHALL contain exactly one [1..1] encounterParticipant (CONF:1169-34264) such that it
Note: This element records the provider that referred the patient to the reporting facility. This element SHALL be provided in the header of the CDA document in the event the patient was referred to this ambulatory healthcare provider.  SHALL contain exactly one [1..1] @typeCode="REF" (CONF:1169-34383).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72073-branch-72073-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity">
			<sch:assert id="a-1169-215-branch-72073-c" test="count(cda:assignedPerson)=1">This assignedEntity SHALL contain zero or one [0..1] assignedPerson (CONF:1169-215).</sch:assert>
			<sch:assert id="a-1169-218-branch-72073" test="count(cda:id) &gt; 0">This assignedEntity SHALL contain at least one [1..*] id (CONF:1169-218) such that it</sch:assert>
			<sch:assert id="a-1169-33921-branch-72073-c" test="count(cda:representedOrganization)=1">This assignedEntity SHALL contain exactly one [1..1] representedOrganization (CONF:1169-33921).</sch:assert>
			<sch:assert id="a-1169-33922-branch-72073-c" test="cda:representedOrganization[count(cda:id)&gt;0]">This representedOrganization SHALL contain at least one [1..*] id (CONF:1169-33922) such that it</sch:assert>
			<sch:assert id="a-1169-216-branch-72073-c" test="not(cda:assignedPerson) or cda:assignedPerson[count(cda:name)=1]">This assignedPerson SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1169-216).</sch:assert>
			<sch:assert id="a-1169-33925-branch-72073-c" test="cda:representedOrganization[count(cda:name)&gt;0]">This representedOrganization SHALL contain at least one [1..*] name (CONF:1169-33925).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72081-branch-72081-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility">
			<sch:assert id="a-1169-33896-branch-72081" test="count(cda:id[@root='2.16.840.1.113883.4.6']) &gt; 0">SHALL contain at least one [1..*] id (CONF:1169-33896) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1169-33899).</sch:assert>
			<sch:assert id="a-1169-33897-branch-72081" test="count(cda:serviceProviderOrganization)=1">SHALL contain exactly one [1..1] serviceProviderOrganization (CONF:1169-33897) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72082-branch-72082-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization">
			<sch:assert id="a-1169-33904-branch-72082-c" test="count(cda:addr) &gt; 0">SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33904).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72097-branch-72097-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']]">
			<sch:assert id="a-1169-33044-branch-72097" test="not(@nullFlavor)">This section SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33044).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72114-branch-72114-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedPerson]]">
			<sch:assert id="a-1169-33231-branch-72114-c" test="cda:assignedAuthor[count(cda:addr) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.17:2014-08-08) (CONF:1169-33231).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72120-branch-72120-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]">
			<sch:assert id="a-1169-33688-branch-72120-c" test="cda:assignedAuthor[count(cda:addr) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33688).</sch:assert>
			<sch:assert id="a-1169-33726-branch-72120" test="cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:softwareName)=1]">This assignedAuthoringDevice SHALL contain exactly one [1..1] softwareName (CONF:1169-33726).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72125-branch-72125-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1169-33909-branch-72125" test="count(cda:id) &gt; 0">This assignedEntity SHALL contain at least one [1..*] id (CONF:1169-33909) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-77325-branch-77325-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter[cda:location]/cda:encounterParticipant">
			<sch:assert id="a-1169-34373-branch-77325" test="count(cda:assignedEntity)=1">SHALL contain exactly one [1..1] assignedEntity (CONF:1169-34373).</sch:assert>
			<sch:assert id="a-1169-34374-branch-77325-c" test="cda:assignedEntity[count(cda:id)=1]">This assignedEntity SHALL contain exactly one [1..1] id (CONF:1169-34374).</sch:assert>
			<sch:assert id="a-1169-34375-branch-77325-c" test="cda:assignedEntity[@nullFlavor]">This assignedEntity SHALL contain exactly one [1..1] @nullFlavor, which SHALL be selected from ValueSet NullValues_UNK_NA urn:oid:2.16.840.1.113883.10.20.5.9.2 DYNAMIC (CONF:1169-34375).</sch:assert>
			<sch:assert id="a-1169-34376-branch-77325-c" test="cda:assignedEntity/cda:id[@nullFlavor='NA']">This id SHALL contain exactly one [1..1] @nullFlavor="NA" Not applicable (CONF:1169-34376).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-patientName-1169-33034-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33237-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-32655-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:addr">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-33916-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:assignedPerson"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-216-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:assignedPerson"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33914-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33231-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author/cda:assignedAuthor[cda:assignedPerson]/cda:addr">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33688-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33919-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33926-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:representedOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33904-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-32648-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:component/cda:structuredBody"> 
			<sch:assert id="a-1169-32649" test="count(cda:component[not(@nullFlavor) and count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32649) such that it SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33043). SHALL contain exactly one [1..1] Cancer Diagnosis Section (entries required) (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.2:2015-02-05) (CONF:1169-32650).</sch:assert>
			<sch:assert id="a-1169-32658" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32658) such that it SHALL contain exactly one [1..1] Problem Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.21:2014-08-08) (CONF:1169-32659).</sch:assert>
			<sch:assert id="a-1169-32660" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32660) such that it SHALL contain exactly one [1..1] Plan of Treatment Section (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.9:2014-08-08) (CONF:1169-32661).</sch:assert>
			<sch:assert id="a-1169-32668" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32668) such that it SHALL contain exactly one [1..1] Payers Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.18:2014-06-09) (CONF:1169-32669).</sch:assert>
			<sch:assert id="a-1169-32670" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32670) such that it SHALL contain exactly one [1..1] Medications Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.13:2014-08-08) (CONF:1169-32671).</sch:assert>
			<sch:assert id="a-1169-32674" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32674) such that it SHALL contain exactly one [1..1] Medications Administered Section (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.12:2014-08-08) (CONF:1169-32675).</sch:assert>
			<sch:assert id="a-1169-32720" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32720) such that it SHALL contain exactly one [1..1] Family History Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2014-06-09) (CONF:1169-32721).</sch:assert>
			<sch:assert id="a-1169-33045" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33045) such that it SHALL contain exactly one [1..1] Procedures Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.10:2014-08-08) (CONF:1169-33046).</sch:assert>
			<sch:assert id="a-1169-33047" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33047) such that it SHALL contain exactly one [1..1] Results Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3.1:2014-06-09) (CONF:1169-33048).</sch:assert>
			<sch:assert id="a-1169-33049" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2015-01-29']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33049) such that it SHALL contain exactly one [1..1] Social History Section (V2) - Cancer IG Specific Constraints (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.11:2015-01-29) (CONF:1169-33050).</sch:assert>
			<sch:assert id="a-1169-33051" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33051) such that it SHALL contain exactly one [1..1] Vital Signs Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4.1:2014-06-09) (CONF:1169-33052).</sch:assert>
			<sch:assert id="a-1169-33701" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33701) such that it SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1169-33702).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-recordTarget-patientRole-patient-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:assert id="a-1169-223" test="count(cda:birthplace)=1">This patient SHALL contain exactly one [1..1] birthplace (CONF:1169-223).</sch:assert>
			<sch:assert id="a-1169-225" test="cda:birthplace[count(cda:place)=1]">This birthplace SHALL contain exactly one [1..1] place (CONF:1169-225).</sch:assert>
			<sch:assert id="a-1169-226" test="cda:birthplace/cda:place[count(cda:addr)=1]">This place SHALL contain exactly one [1..1] addr (CONF:1169-226).</sch:assert>
			<sch:assert id="a-1169-33034-c" test="count(cda:name[not(@nullFlavor)]) &gt; 0">This patient SHALL contain at least one [1..*] US Realm Patient Name (PTN.US.FIELDED) - Cancer IG Specific Constraints  (identifier: urn:hl7ii:2.16.840.1.113883.10.13.18:2014-08-08) (CONF:1169-33034) such that it SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33035).</sch:assert>
			<sch:assert id="a-1169-33037" test="count(cda:administrativeGenderCode)=1">This patient SHALL contain exactly one [1..1] administrativeGenderCode (CONF:1169-33037).</sch:assert>
			<sch:assert id="a-1169-33039" test="count(cda:birthTime)=1">This patient SHALL contain exactly one [1..1] birthTime (CONF:1169-33039).</sch:assert>
			<sch:assert id="a-1169-33881" test="not(cda:name) or cda:name[count(cda:family)=1]">The name, if present, SHALL contain exactly one [1..1] family (CONF:1169-33881).</sch:assert>
			<sch:assert id="a-1169-227" test="cda:birthplace/cda:place/cda:addr[count(cda:country)=1]">This addr SHALL contain exactly one [1..1] country (CONF:1169-227).
Note: Use nullFlavor when the patients birth country is not known.</sch:assert>
			<sch:assert id="a-1169-228" test="cda:birthplace/cda:place/cda:addr[count(cda:state)=1]">This addr SHALL contain exactly one [1..1] state (CONF:1169-228).
Note: Use nullFlavor when the patients birth state is not known.</sch:assert>
			<sch:assert id="a-1169-33038" test="cda:administrativeGenderCode[not(@nullFlavor)]">This administrativeGenderCode SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33038).</sch:assert>
			<sch:assert id="a-1169-33040" test="cda:birthTime[not(@nullFlavor)]">This birthTime SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33040).</sch:assert>
			<sch:assert id="a-1169-33041-c" test="string-length(cda:birthTime/@value)=8">SHALL be precise to day (CONF:1169-33041).</sch:assert>
			<sch:assert id="a-1169-33243-c" test="count(cda:maritalStatusCode[@codeSystem='urn:oid:2.16.840.1.113883.5.2'] and @codeSystem=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.12212']/voc:code/@value)=1">This patient SHALL contain exactly one [1..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status urn:oid:2.16.840.1.113883.1.11.12212 (CONF:1169-33243).</sch:assert>
			<sch:assert id="a-1169-33605-c" test="count(sdtc:raceCode)&gt;=1">This patient SHALL contain at least one [1..*] sdtc:raceCode, which SHALL be selected from ValueSet Race urn:oid:2.16.840.1.113883.1.11.14914 (CONF:1169-33605).</sch:assert>
			<sch:assert id="a-1169-33882" test="not(cda:name/cda:family) or cda:name/cda:family[@qualifier='BR']">This family SHALL contain exactly one [1..1] @qualifier="BR" birth (CodeSystem: EntityNamePartQualifier urn:oid:2.16.840.1.113883.5.43) (CONF:1169-33882).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34047" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34047).</sch:assert>
			<sch:assert id="a-1169-34048" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34048).</sch:assert>
			<sch:assert id="a-1169-34049" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1169-34049).</sch:assert>
			<sch:assert id="a-1169-34050" test="cda:code[@code='21908-9' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21908-9" Stage group.clinical (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34050).</sch:assert>
			<sch:assert id="a-1169-34051" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34051).</sch:assert>
			<sch:assert id="a-1169-34052" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-34052).</sch:assert>
			<sch:assert id="a-1169-34053" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1169-34053).</sch:assert>
			<sch:assert id="a-1169-34054" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34054).</sch:assert>
			<sch:assert id="a-1169-34055" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Stage Group urn:oid:2.16.840.1.113883.3.520.4.9 DYNAMIC (CONF:1169-34055).</sch:assert>
			<sch:assert id="a-1169-34056" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34056).</sch:assert>
			<sch:assert id="a-1169-34057" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.9']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.9" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34057).</sch:assert>
			<sch:assert id="a-1169-34061-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34061).</sch:assert>
			<sch:assert id="a-1169-34062" test="cda:value[@xsi:type='CD'][count(cda:qualifier)=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-34062).</sch:assert>
			<sch:assert id="a-1169-34063" test="cda:value[@xsi:type='CD']/cda:qualifier[count(cda:name)=1]">This qualifier SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34063).</sch:assert>
			<sch:assert id="a-1169-34064" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@code='21909-7']">This name SHALL contain exactly one [1..1] @code="21909-7" Descriptor.clinical Cancer Narrative (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34064).</sch:assert>
			<sch:assert id="a-1169-34065" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@codeSystem='2.16.840.1.113883.6.1']">This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34065).</sch:assert>
			<sch:assert id="a-1169-34066" test="cda:value[@xsi:type='CD']/cda:qualifier[count(cda:value)=1]">This qualifier SHALL contain exactly one [1..1] value (CONF:1169-34066).</sch:assert>
			<sch:assert id="a-1169-34067" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Stage Descriptor urn:oid:2.16.840.1.113883.3.520.4.10 DYNAMIC (CONF:1169-34067).</sch:assert>
			<sch:assert id="a-1169-34068" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34068).</sch:assert>
			<sch:assert id="a-1169-34070" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.10']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.10" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34070).</sch:assert>
			<sch:assert id="a-1169-34071" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34071) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Tumor (T). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34072). SHALL contain exactly one [1..1] Primary Tumor Clinical (identifier: urn:hl7ii:2.16.840.1.113883.10.13.36:2015-02-05) (CONF:1169-34073).</sch:assert>
			<sch:assert id="a-1169-34090" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34090) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Node (N). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34091). SHALL contain exactly one [1..1] Regional Lymph Nodes Clinical (identifier: urn:hl7ii:2.16.840.1.113883.10.13.37:2015-02-05) (CONF:1169-34092).</sch:assert>
			<sch:assert id="a-1169-34093" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34093) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Metastasis (M). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34094). SHALL contain exactly one [1..1] Distant Metastases Clinical (identifier: urn:hl7ii:2.16.840.1.113883.10.13.38:2015-02-05) (CONF:1169-34097).</sch:assert>
			<sch:assert id="a-1169-34095" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34095) such that it
Note: Identifies the role of the person who recorded the staging elements. SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34096). SHALL contain exactly one [1..1] Stager Clinical Cancer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.39:2015-02-05) (CONF:1169-34098).</sch:assert>
			<sch:assert id="a-1169-34254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.35'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.35" (CONF:1169-34255). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34256).</sch:assert>
			<sch:assert id="a-1169-34260-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34260).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-32498" test="count(cda:statusCode[@code='completed'])=1">SHALL contain exactly one [1..1] statusCode="completed" (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-32498).</sch:assert>
			<sch:assert id="a-1169-32499" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-32499).</sch:assert>
			<sch:assert id="a-1169-32513" test="cda:effectiveTime[count(cda:low)=1]">The effectiveTime/low documents when detailed site-specific information on the progression of disease for the cancer/tumor was recorded.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-32513).</sch:assert>
			<sch:assert id="a-1169-32510" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32510).</sch:assert>
			<sch:assert id="a-1169-33399" test="count(cda:entryRelationship)=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-33399).
Note: This entryRelationship provides information on the TNM Clinical Stage Group.</sch:assert>
			<sch:assert id="a-1169-33400" test="cda:entryRelationship[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']])=1]">This entryRelationship SHALL contain exactly one [1..1] TNM Clinical Stage Group (identifier: urn:hl7ii:2.16.840.1.113883.10.13.35:2015-02-05) (CONF:1169-33400).</sch:assert>
			<sch:assert id="a-1169-32512" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-32512).</sch:assert>
			<sch:assert id="a-1169-32505" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-32505).</sch:assert>
			<sch:assert id="a-1169-32506" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-32506).</sch:assert>
			<sch:assert id="a-1169-32509" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1169-32509).</sch:assert>
			<sch:assert id="a-1169-33659" test="cda:code[@code='75620-5' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75620-5" TNM clinical staging before treatment panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33659).</sch:assert>
			<sch:assert id="a-1169-33660" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33660).</sch:assert>
			<sch:assert id="a-1169-33188" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33188).</sch:assert>
			<sch:assert id="a-1169-33470" test="cda:entryRelationship[@typeCode='COMP']">This entryRelationship SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-33470).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-32494" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.5'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-32494) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.5" (CONF:1169-32508). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33976).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-253" test="count(cda:entry[not(@nullFlavor)][count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2015-02-05']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1169-253) such that it SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33244).
SHALL contain exactly one [1..1] Cancer Diagnosis Concern Act (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.3:2015-02-05) (CONF:1169-257).</sch:assert>
			<sch:assert id="a-1169-255" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1169-255).</sch:assert>
			<sch:assert id="a-1169-259" test="cda:code[@code='72135-7']">This code SHALL contain exactly one [1..1] @code="72135-7" Cancer diagnosis (CONF:1169-259).</sch:assert>
			<sch:assert id="a-1169-260" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1]  @codeSystem="2.16.840.1.113883.6.1" (CONF:1169-260).</sch:assert>
			<sch:assert id="a-1169-261" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1169-261).</sch:assert>
			<sch:assert id="a-1169-262" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1169-262).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.2'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.2" (CONF:1169-258). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33947).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-32420" test="count(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1169-32420) such that it SHALL contain exactly one [1..1] Cancer Diagnosis Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.4:2015-02-05) (CONF:1169-32426). SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1169-32436).</sch:assert>
			<sch:assert id="a-1169-32422" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1169-32422).</sch:assert>
			<sch:assert id="a-1169-32423" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-32423).</sch:assert>
			<sch:assert id="a-1169-32433" test="cda:statusCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.19']/voc:code/@value]">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode urn:oid:2.16.840.1.113883.11.20.9.19 STATIC (CONF:1169-32433).</sch:assert>
			<sch:assert id="a-1169-32424" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-32424).</sch:assert>
			<sch:assert id="a-1169-32435" test="(cda:statusCode[@code='completed'] and cda:effectiveTime[count(cda:high)=1]) or (cda:statusCode[@code !='completed'] and cda:effectiveTime[count(cda:high)=0])">This effectiveTime SHALL contain zero or one [0..1] high (CONF:1169-32435).
Note: The effectiveTime/high asserts when the concern was completed (e.g. when the clinician deemed there is no longer any need to track the underlying condition). This element SHALL be present when statusCode="completed" and SHALL not be present otherwise.</sch:assert>
			<sch:assert id="a-1169-32431" test="cda:code[@code='CONC']">This code SHALL contain exactly one [1..1] @code="CONC" Concern (CONF:1169-32431).</sch:assert>
			<sch:assert id="a-1169-32432" test="cda:code[@codeSystem='2.16.840.1.113883.5.6']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.6" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-32432).</sch:assert>
			<sch:assert id="a-1169-32434" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-32434).
Note: The effectiveTime/low asserts when the concern became active. This equates to the time the concern was authored in the patient's chart. </sch:assert>
			<sch:assert id="a-1169-32427" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-32427).</sch:assert>
			<sch:assert id="a-1169-32428" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-32428).</sch:assert>
			<sch:assert id="a-1169-32430" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1169-32430).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-32421" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.3'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-32421) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.3" (CONF:1169-32429). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33955).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors-abstract" abstract="true">
			<sch:let name="textRefValue" value="cda:text/cda:reference/@value"/>
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-32440-c" test="count(cda:entryRelationship[not(@nullFlavor)][@typeCode='SUBJ'][@inversionInd='true']/cda:observation/cda:templateId[@root='2.16.840.1.113883.10.13.5' or @root='2.16.840.1.113883.10.13.31'])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-32440) such that it
SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33186). SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1169-32465). SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:1169-32466). This entryRelationship SHALL contain either
SHALL contain exactly one [1..1] TNM Clinical Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.5:2015-02-05) (CONF:1169-32451).
SHALL contain exactly one [1..1] No Known TNM Clinical Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.31:2015-04-02) (CONF:1169-34365).</sch:assert>
			<sch:assert id="a-1169-32444" test="not(cda:text/cda:reference) or cda:text/cda:reference[@value]">The reference, if present, SHALL contain exactly one [1..1] @value (CONF:1169-32444).</sch:assert>
			<sch:assert id="a-1169-32445" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-32445).</sch:assert>
			<sch:assert id="a-1169-32446" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-32446).
Note: Records the date of initial diagnosis by a recognized medical practitioner for the cancer being reported.</sch:assert>
			<sch:assert id="a-1169-32460" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-32460).
Note: The effectiveTime/low (a.k.a. "onset date") indicates Cancer Diagnosis Date.</sch:assert>
			<sch:assert id="a-1169-32447" test="count(cda:value[@xsi:type='CD' and @code and @displayName and @codeSystem])=1 or count(cda:value[@xsi:type='CD' and not(@code)]/cda:originalText)=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-32447).
Note: The value records the histologic type (or cell type) of a malignant tumor (e.g., carcinoma, melanoma, sarcoma, lymphoma, leukemia). Histologic tumor type SHOULD be encoded and selected from one of the following coding systems: ICD-O-3, ICD-9-CM Appendix A, ICD-10-CM, SNOMED CT. If the code for histologic tumor type cannot be found in one of the aforementioned coding systems then the string value of the histologic tumor type must be provided. In summary: - If tumor histologic type is coded, then the value for the code SHALL be provided in @code field. In this case, the values for @displayName and @codeSystem associated with @code value SHALL be provided.- If tumor histologic type is NOT coded, then the value for the code SHALL be provided in &lt;originalText&gt; field. In this case @code attribute (as well as @displayName and @codeSystem) with be empty.</sch:assert>
			<sch:assert id="a-1169-32463" test="cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-32463) such that it
Note: This qualifier provides Behavior information, indicating whether the tumor has a  benign, uncertain, in situ, malignant or metastatic behavior. SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32474). This name SHALL contain exactly one [1..1] @code="31206-6" Behavior ICD-O-3 Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34041). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1169-34042).</sch:assert>
			<sch:assert id="a-1169-32464" test="cda:value[@xsi:type='CD'][@nullFlavor] or (cda:value[@xsi:type='CD'][@code!=8000 and @code!=86049000] or cda:value[@xsi:type='CD'][@code=8000][@displayName='Neoplasm'][@codeSystem='2.16.840.1.113883.6.43.1' or @codeSystem='2.16.840.1.114222.4.11.6038' or @codeSystem='2.16.840.1.113883.6.90'] or cda:value[@xsi:type='CD'][@code=86049000][@displayName='Neoplasm, malignant (primary)'][@codeSystem='2.16.840.1.113883.6.96'])">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @code (CONF:1169-32464).
Note: This @code attribute is used to document histologic type of tumor. If the histologic type isn’t known, the value of “8000” (with @displayName="Neoplasm") should be used when using code systems ICD-O-3, ICD-9-CM, ICD-10-CM and "86049000" (with @displayName="Neoplasm, malignant (primary)") when using SNOMED CT code system.</sch:assert>
			<sch:assert id="a-1169-32490" test="cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-32490) such that it
Note: This qualifier provides Diagnostic Confirmation information, indicating the best method used to confirm the presence of the cancer being reported, such that SHALL contain exactly one [1..1] name="21861-0" Dx confirmed by Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32481). This name SHALL contain exactly one [1..1] @code="21861-0" Dx confirmed by Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34043). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1169-34044).</sch:assert>
			<sch:assert id="a-1169-32537" test="cda:value[@xsi:type='CD'][not(@code)] or cda:value[@xsi:type='CD'][count(cda:originalText)=1]">If value/@code not present then
This value SHALL contain exactly one [1..1] originalText (CONF:1169-32537).
Note: This &lt;originalText&gt; element is used to document string value of histologic type of tumor in both cases: when histologic type of tumor is coded or is not coded.For example:(1) If histologic tumor type is coded, then the code value SHALL be provided in @code attribute (along with @displayName and @codeSystem values associated with the @code value). In addition, string value (typically the string that the user uses in his own information system) should be provided in &lt;originalText&gt; field. Note that if the user uses the same string value for histologic tumor type in his own system as the string value (=displayName) from the coding system, then the string values for &lt;originalText&gt; and @displayName will be equivalent in Cancer Report.(2) If histologic tumor type is NOT coded, then the string value SHALL be provided in &lt;originalText&gt;.</sch:assert>
			<sch:assert id="a-1169-32538" test="cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">This originalText SHALL contain exactly one [1..1] reference (CONF:1169-32538).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1169-32539" test="cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">This reference SHALL contain exactly one [1..1] @value (CONF:1169-32539).</sch:assert>
			<sch:assert id="a-1169-32618" test="cda:value[@xsi:type='CD'][@displayName or @nullFlavor]">If value/@nullFlavor not present then
This value SHALL contain exactly one [1..1] @displayName (CONF:1169-32618).</sch:assert>
			<sch:assert id="a-1169-32634" test="cda:value[@xsi:type='CD'][@codeSystem or @nullFlavor]">If value/@nullFlavor not present then
This value SHALL contain exactly one [1..1] @codeSystem (CONF:1169-32634).</sch:assert>
			<sch:assert id="a-1169-33606" test="cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-33606) such that it
Note: This qualifier is used to indicate the Grade (or degree of differentiation) of tumor. SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33607). This name SHALL contain exactly one [1..1] @code="21858-6" Grade Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34045). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1169-34046).</sch:assert>
			<sch:assert id="a-1169-32457" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1169-32457).</sch:assert>
			<sch:assert id="a-1169-32487" test="count(cda:targetSiteCode)=1">SHALL contain exactly one [1..1] targetSiteCode (CONF:1169-32487).
Note: targetSiteCode indicates the anatomic location where the primary tumor originated (referred to as primary site).</sch:assert>
			<sch:assert id="a-1169-33177-c" test="count(cda:entryRelationship[not(@nullFlavor)][@typeCode='SUBJ'][@inversionInd='true']/cda:observation/cda:templateId[@root='2.16.840.1.113883.10.13.7' or @root='2.16.840.1.113883.10.13.32'])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-33177) such that it
SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33187).	SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-33178). SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:1169-33179). This entryRelationship SHALL contain either
SHALL contain exactly one [1..1] TNM Pathologic Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.7:2015-02-06) (CONF:1169-33180) OR SHALL contain exactly one [1..1] No Known TNM Pathologic Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.32:2015-04-02) (CONF:1169-34366).</sch:assert>
			<sch:assert id="a-1169-33192" test="count(cda:entryRelationship[@typeCode='REFR'][count(cda:observation[count(cda:id)=1])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1169-33192) such that it SHALL contain exactly one [1..1] observation (CONF:1169-33193). This observation SHALL contain exactly one [1..1] id (CONF:1169-33195).
Note: This "id" is used to link cancer diagnosis observation to the problem observation "id". SHALL contain exactly one [1..1] @typeCode="REFR" Reference (CONF:1169-33194).</sch:assert>
			<sch:assert id="a-1169-32458-c" test="count(cda:text/cda:reference[@value])=0 or (starts-with($textRefValue, '#') and count(//*[@ID=substring($textRefValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-32458).</sch:assert>
			<sch:assert id="a-1169-32459" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-32459).</sch:assert>
			<sch:assert id="a-1169-33246" test="cda:effectiveTime/cda:low[not(@nullFlavor)]">This low SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33246).</sch:assert>
			<sch:assert id="a-1169-33245" test="cda:effectiveTime[not(@nullFlavor)]">This effectiveTime SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33245).</sch:assert>
			<sch:assert id="a-1169-32473-c" test="true()">
The @code for histologic type of tumor, if present, SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) Morphologic Abnormality of Neoplasms Value Set (ValueSet: 2.16.840.1.114222.4.11.7256) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (CodeSystem: 2.16.840.1.114222.4.11.6038) or
(d) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) (CONF:1169-32473).</sch:assert>
			<sch:assert id="a-1169-32613-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-32613).</sch:assert>
			<sch:assert id="a-1169-32619-c" test="true()">The @displayName associated with the code for histologic type of tumor SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) Morphologic Abnormality of Neoplasms Value Set (ValueSet: 2.16.840.1.114222.4.11.7256) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (CodeSystem: 2.16.840.1.114222.4.11.6038) or
(d) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) (CONF:1169-32619).</sch:assert>
			<sch:assert id="a-1169-32635-c" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.6.43.1'] or cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.114222.4.11.6038'] or cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.6.90'] or cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.6.96']">The @codeSystem associated with the code for histologic type of tumor SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (CodeSystem: 2.16.840.1.114222.4.11.6038) or
(d) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) (CONF:1169-32635).</sch:assert>
			<sch:assert id="a-1169-32452" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-32452).</sch:assert>
			<sch:assert id="a-1169-32453" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-32453).</sch:assert>
			<sch:assert id="a-1169-32456" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1169-32456).</sch:assert>
			<sch:assert id="a-1169-33309" test="cda:code[@code='29308-4' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="29308-4" Diagnosis (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33309).</sch:assert>
			<sch:assert id="a-1169-33310" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1169-33310).</sch:assert>
			<sch:assert id="a-1169-32489-c" test="true()">The value for @code attribute SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) Value Set: "Body Site" (ValueSet: 2.16.840.1.113883.3.88.12.3221.8.9) - SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1169-32489).</sch:assert>
			<sch:assert id="a-1169-32639-c" test="true()">The value for @displayName associated with @code SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) Value Set: "Body Site" (ValueSet: 2.16.840.1.113883.3.88.12.3221.8.9) - SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1169-32639).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-32441" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.4'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-32441) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.4" (CONF:1169-32455). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33956).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32487-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:targetSiteCode">
			<sch:assert id="a-1169-32488" test="@code">This targetSiteCode SHALL contain exactly one [1..1] @code (CONF:1169-32488).</sch:assert>
			<sch:assert id="a-1169-33008" test="count(cda:qualifier)=1">This targetSiteCode SHALL contain exactly one [1..1] qualifier (CONF:1169-33008).</sch:assert>
			<sch:assert id="a-1169-33009" test="cda:qualifier[count(cda:name)=1]">This qualifier SHALL contain exactly one [1..1] name (CONF:1169-33009).</sch:assert>
			<sch:assert id="a-1169-33010" test="cda:qualifier[count(cda:value)=1]">This qualifier SHALL contain exactly one [1..1] value (CONF:1169-33010).
Note: This qualifier provides Laterality, the side of a paired organ, or the side of the body on which the reportable tumor originated.</sch:assert>
			<sch:assert id="a-1169-33182" test="@codeSystem">This targetSiteCode SHALL contain exactly one [1..1] @codeSystem (CONF:1169-33182).</sch:assert>
			<sch:assert id="a-1169-33011" test="cda:qualifier/cda:name[@code='20228-3']">This name SHALL contain exactly one [1..1] @code="20228-3" Anatomic part Laterality (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33011).</sch:assert>
			<sch:assert id="a-1169-33013" test="cda:qualifier/cda:name[@codeSystem='2.16.840.1.113883.6.1']">This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33013).</sch:assert>
			<sch:assert id="a-1169-33014" test="cda:qualifier/cda:name[@codeSystemName='LOINC']">This name SHALL contain exactly one [1..1] @codeSystemName="LOINC" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33014).</sch:assert>
			<sch:assert id="a-1169-33012-c" test="count(cda:qualifier/cda:value[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.22']/voc:code/@value])=1">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Laterality urn:oid:2.16.840.1.113883.3.520.4.22 (CONF:1169-33012).</sch:assert>
			<sch:assert id="a-1169-33015" test="cda:qualifier/cda:value[@codeSystem='2.16.840.1.113883.6.96']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1169-33015).</sch:assert>
			<sch:assert id="a-1169-33185-c" test="count(cda:qualifier/cda:value[@displayName and @displayName=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.22']/voc:code/@displayName])=1">This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Laterality urn:oid:2.16.840.1.113883.3.520.4.22 (CONF:1169-33185).</sch:assert>
			<sch:assert id="a-1169-33708" test="cda:qualifier/cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.22']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.22" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1169-33708).</sch:assert>
			<sch:assert id="a-1169-33620-c" test="@codeSystem='2.16.840.1.113883.6.43.1' or @codeSystem='2.16.840.1.113883.6.103' or @codeSystem='2.16.840.1.113883.6.90' or @codeSystem='2.16.840.1.113883.6.96'">The value for @codeSystem attribute SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1169-33620).</sch:assert>
			<sch:assert id="a-1169-33247" test="not(@nullFlavor)">This targetSiteCode SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33247).</sch:assert>
			<sch:assert id="a-1169-33707-c" test="(@codeSystem='2.16.840.1.113883.6.96' and @sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9') or (@codeSystem !='2.16.840.1.113883.6.96' and @sdtc:valueSet!='2.16.840.1.113883.3.88.12.3221.8.9')">If the @code is selected from the Value Set "Body Site", then the value for @valueSet SHALL be "2.16.840.1.113883.3.88.12.3221.8.9" (CONF:1169-33707).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-72868-branch-72868-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
        	<sch:assert id="a-1169-32475-branch-72868-c" test="count(cda:value[@codeSystem='2.16.840.1.113883.3.520.3.14'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.14'][count(cda:originalText[count(cda:reference[@value])=1])=1])=1">SHALL contain exactly one [1..1] value (CONF:1169-32475).
Note: - If coded, the code value describing the behavior of the tumor/cancerSHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the behavior of the tumor/cancer SHALL be provided within &lt;originalText&gt; element.  This value SHOULD contain zero or one [0..1] originalText (CONF:1169-32477). The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-32478).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1). The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-32479). This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.14" (CodeSystem: NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.3.14 STATIC) (CONF:1169-32632). This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.14" (CodeSystem: NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.3.14 STATIC) (CONF:1169-33703).</sch:assert>
            <sch:assert id="a-1169-32614-branch-72868-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-32614).</sch:assert>
        </sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-72875-branch-72875-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-32482-branch-72875" test="count(cda:value[@code and @displayName and @codeSystem])=1 or count(cda:value[not(@code)]/cda:originalText)=1">SHALL contain exactly one [1..1] value (CONF:1169-32482).
Note: - If coded, the code value describing the best method of diagnosis of the tumor/cancer SHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the best method of diagnosis of the tumor/cancer SHALL be provided within &lt;originalText&gt; element. </sch:assert>
			<sch:assert id="a-1169-33181-branch-72875-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-33181).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-72886-branch-72886-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-33608-branch-72886" test="count(cda:value[@code and @displayName and @codeSystem])=1 or count(cda:value[not(@code)]/cda:originalText)=1">SHALL contain exactly one [1..1] value (CONF:1169-33608).
Note: - If coded, the code value describing the grade of the tumor/cancer SHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the grade of the tumor/cancer SHALL be provided within &lt;originalText&gt; element. </sch:assert>
			<sch:assert id="a-1169-33615-branch-72886-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or (starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-33615).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34074" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.36'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34074) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.36" (CONF:1169-34075). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34076).</sch:assert>
			<sch:assert id="a-1169-34077" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34077).</sch:assert>
			<sch:assert id="a-1169-34078" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34078).</sch:assert>
			<sch:assert id="a-1169-34079" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34079).</sch:assert>
			<sch:assert id="a-1169-34080" test="cda:code[@code='21905-5' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21905-5" Primary tumor.clinical [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34080).</sch:assert>
			<sch:assert id="a-1169-34081" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34081).</sch:assert>
			<sch:assert id="a-1169-34082" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34082).</sch:assert>
			<sch:assert id="a-1169-34083" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.6']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Tumor urn:oid:2.16.840.1.113883.3.520.4.6 (CONF:1169-34083).</sch:assert>
			<sch:assert id="a-1169-34087" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34087).</sch:assert>
			<sch:assert id="a-1169-34088" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.6']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34088).</sch:assert>
			<sch:assert id="a-1169-34089-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34089).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34099" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.37'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34099) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.37" (CONF:1169-34102). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34103).</sch:assert>
			<sch:assert id="a-1169-34100" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34100).</sch:assert>
			<sch:assert id="a-1169-34101" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34101).</sch:assert>
			<sch:assert id="a-1169-34104" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34104).</sch:assert>
			<sch:assert id="a-1169-34105" test="cda:code[@code='21906-3' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21906-3" Regional lymph nodes.clinical [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34105).</sch:assert>
			<sch:assert id="a-1169-34106" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34106).</sch:assert>
			<sch:assert id="a-1169-34107" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34107).</sch:assert>
			<sch:assert id="a-1169-34111" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.7']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Node urn:oid:2.16.840.1.113883.3.520.4.7 (CONF:1169-34111).</sch:assert>
			<sch:assert id="a-1169-34112" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34112).</sch:assert>
			<sch:assert id="a-1169-34113" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.7']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.7" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34113).</sch:assert>
			<sch:assert id="a-1169-34114-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34114).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34115" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34115).</sch:assert>
			<sch:assert id="a-1169-34116" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34116).</sch:assert>
			<sch:assert id="a-1169-34117" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34117).</sch:assert>
			<sch:assert id="a-1169-34118" test="cda:code[@code='21907-1' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21907-1" Distant metastases.clinical [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34118).</sch:assert>
			<sch:assert id="a-1169-34119" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34119).</sch:assert>
			<sch:assert id="a-1169-34120" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34120).</sch:assert>
			<sch:assert id="a-1169-34121" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.8']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Metastasis urn:oid:2.16.840.1.113883.3.520.4.8 (CONF:1169-34121).</sch:assert>
			<sch:assert id="a-1169-34122" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34122).</sch:assert>
			<sch:assert id="a-1169-34123" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.8']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.8" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34123).</sch:assert>
			<sch:assert id="a-1169-34127-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34127).</sch:assert>
			<sch:assert id="a-1169-34251" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.38'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34251) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.38" (CONF:1169-34252). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34253).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34128" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.39'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34128) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.39" (CONF:1169-34131). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34132).</sch:assert>
			<sch:assert id="a-1169-34129" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34129).</sch:assert>
			<sch:assert id="a-1169-34130" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34130).</sch:assert>
			<sch:assert id="a-1169-34133" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34133).</sch:assert>
			<sch:assert id="a-1169-34134" test="cda:code[@code='21910-5' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21910-5" Stager.clinical Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34134).</sch:assert>
			<sch:assert id="a-1169-34135" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34135).</sch:assert>
			<sch:assert id="a-1169-34136" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34136).</sch:assert>
			<sch:assert id="a-1169-34137" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet NAACCR TNM Clinical Staged By urn:oid:2.16.840.1.113883.3.520.4.4 DYNAMIC (CONF:1169-34137).</sch:assert>
			<sch:assert id="a-1169-34138" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.3.520.3.4']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.3.520.3.4" NAACCR TNM Clinical Staged By (CONF:1169-34138).</sch:assert>
			<sch:assert id="a-1169-34139" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.4']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.4" NAACCR TNM Clinical Staged By (CONF:1169-34139).</sch:assert>
			<sch:assert id="a-1169-34143-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34143).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34146" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34146).</sch:assert>
			<sch:assert id="a-1169-34147" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34147).</sch:assert>
			<sch:assert id="a-1169-34148" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1169-34148).</sch:assert>
			<sch:assert id="a-1169-34149" test="cda:code[@code='21902-2' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21902-2" Stage group.pathology Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34149).</sch:assert>
			<sch:assert id="a-1169-34150" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34150).</sch:assert>
			<sch:assert id="a-1169-34151" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-34151).</sch:assert>
			<sch:assert id="a-1169-34152" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1169-34152).</sch:assert>
			<sch:assert id="a-1169-34153" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34153).</sch:assert>
			<sch:assert id="a-1169-34154" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Stage Group urn:oid:2.16.840.1.113883.3.520.4.20 DYNAMIC (CONF:1169-34154).</sch:assert>
			<sch:assert id="a-1169-34155" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34155).</sch:assert>
			<sch:assert id="a-1169-34156" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.20']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.20" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34156).</sch:assert>
			<sch:assert id="a-1169-34160-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34160).</sch:assert>
			<sch:assert id="a-1169-34161" test="cda:value[@xsi:type='CD'][count(cda:qualifier)=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-34161).</sch:assert>
			<sch:assert id="a-1169-34162" test="cda:value[@xsi:type='CD']/cda:qualifier[count(cda:name)=1]">This qualifier SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34162).</sch:assert>
			<sch:assert id="a-1169-34163" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@code='21903-0']">This name SHALL contain exactly one [1..1] @code="21903-0" Descriptor.pathology Cancer Narrative (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34163).</sch:assert>
			<sch:assert id="a-1169-34164" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@codeSystem='2.16.840.1.113883.6.1']">This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34164).</sch:assert>
			<sch:assert id="a-1169-34165" test="cda:value[@xsi:type='CD']/cda:qualifier[count(cda:value)=1]">This qualifier SHALL contain exactly one [1..1] value (CONF:1169-34165).</sch:assert>
			<sch:assert id="a-1169-34168" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.21']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Stage Descriptor urn:oid:2.16.840.1.113883.3.520.4.21 (CONF:1169-34168).</sch:assert>
			<sch:assert id="a-1169-34169" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34169).</sch:assert>
			<sch:assert id="a-1169-34171" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.21']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.21" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34171).</sch:assert>
			<sch:assert id="a-1169-34173-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34173).</sch:assert>
			<sch:assert id="a-1169-34174" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34174) such that it
Note: This entryRelationship provides information on the TNM Pathologic Stage Tumor (T). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34175). SHALL contain exactly one [1..1] Primary Tumor Pathologic (identifier: urn:hl7ii:2.16.840.1.113883.10.13.41:2015-02-05) (CONF:1169-34176).</sch:assert>
			<sch:assert id="a-1169-34177" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34177) such that it
Note: This entryRelationship provides information on the TNM Pathologic Stage Node (N). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34178). SHALL contain exactly one [1..1] Regional Lymph Nodes Pathologic (identifier: urn:hl7ii:2.16.840.1.113883.10.13.42:2015-02-05) (CONF:1169-34179).</sch:assert>
			<sch:assert id="a-1169-34180" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34180) such that it
Note: This entryRelationship provides information on the TNM Pathologic Stage Metastasis (M). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7EntityCode urn:oid:2.16.840.1.113883.5.1060) (CONF:1169-34181). SHALL contain exactly one [1..1] Distant Metastases Pathologic (identifier: urn:hl7ii:2.16.840.1.113883.10.13.43:2015-02-05) (CONF:1169-34182).</sch:assert>
			<sch:assert id="a-1169-34183" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34183) such that it
Note: Identifies the role of the person who recorded the staging elements. SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34184). SHALL contain exactly one [1..1] Stager Pathologic Cancer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.44:2015-02-05) (CONF:1169-34185).</sch:assert>
			<sch:assert id="a-1169-34261" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.40'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34261) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.40" (CONF:1169-34262). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34263).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34186" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.41'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34186) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.41" (CONF:1169-34189). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34190).</sch:assert>
			<sch:assert id="a-1169-34187" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34187).</sch:assert>
			<sch:assert id="a-1169-34188" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34188).</sch:assert>
			<sch:assert id="a-1169-34191" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34191).</sch:assert>
			<sch:assert id="a-1169-34192" test="cda:code[@code='21899-0' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21899-0" Primary tumor.pathology Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34192).</sch:assert>
			<sch:assert id="a-1169-34193" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1169-34193).</sch:assert>
			<sch:assert id="a-1169-34194" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34194).</sch:assert>
			<sch:assert id="a-1169-34195" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.17']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Tumor urn:oid:2.16.840.1.113883.3.520.4.17 (CONF:1169-34195).</sch:assert>
			<sch:assert id="a-1169-34196" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34196).</sch:assert>
			<sch:assert id="a-1169-34197" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.17']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.17" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34197).</sch:assert>
			<sch:assert id="a-1169-34201-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34201).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34202" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.42'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34202) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.42" (CONF:1169-34205). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34206).</sch:assert>
			<sch:assert id="a-1169-34203" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34203).</sch:assert>
			<sch:assert id="a-1169-34204" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34204).</sch:assert>
			<sch:assert id="a-1169-34207" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34207).</sch:assert>
			<sch:assert id="a-1169-34208" test="cda:code[@code='21900-6' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21900-6" Regional lymph nodes.pathology [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34208).</sch:assert>
			<sch:assert id="a-1169-34209" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34209).</sch:assert>
			<sch:assert id="a-1169-34210" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34210).</sch:assert>
			<sch:assert id="a-1169-34211" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.18']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Node urn:oid:2.16.840.1.113883.3.520.4.18 (CONF:1169-34211).</sch:assert>
			<sch:assert id="a-1169-34212" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34212).</sch:assert>
			<sch:assert id="a-1169-34216" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.18']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.18" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34216).</sch:assert>
			<sch:assert id="a-1169-34217-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34217).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34218" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.43'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34218) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.43" (CONF:1169-34221). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34222).</sch:assert>
			<sch:assert id="a-1169-34219" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34219).</sch:assert>
			<sch:assert id="a-1169-34220" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34220).</sch:assert>
			<sch:assert id="a-1169-34223" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34223).</sch:assert>
			<sch:assert id="a-1169-34224" test="cda:code[@code='21901-4' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21901-4" Distant metastases.pathology [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34224).</sch:assert>
			<sch:assert id="a-1169-34225" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34225).</sch:assert>
			<sch:assert id="a-1169-34226" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34226).</sch:assert>
			<sch:assert id="a-1169-34227" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.19']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Metastasis urn:oid:2.16.840.1.113883.3.520.4.19 (CONF:1169-34227).</sch:assert>
			<sch:assert id="a-1169-34228" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34228).</sch:assert>
			<sch:assert id="a-1169-34229" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.19']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.19" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34229).</sch:assert>
			<sch:assert id="a-1169-34233-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34233).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34234" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.44'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34234) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.44" (CONF:1169-34237). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34238).</sch:assert>
			<sch:assert id="a-1169-34235" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34235).</sch:assert>
			<sch:assert id="a-1169-34236" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34236).</sch:assert>
			<sch:assert id="a-1169-34239" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34239).</sch:assert>
			<sch:assert id="a-1169-34240" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34240).</sch:assert>
			<sch:assert id="a-1169-34241" test="cda:code[@code='21904-8' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21904-8" Stager.pathology Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34241).</sch:assert>
			<sch:assert id="a-1169-34242" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34242).</sch:assert>
			<sch:assert id="a-1169-34243" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet NAACCR TNM Pathologic Staged By urn:oid:2.16.840.1.113883.3.520.4.27 DYNAMIC (CONF:1169-34243).</sch:assert>
			<sch:assert id="a-1169-34244" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.3.520.3.17']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.3.520.3.17" NAACCR TNM Pathologic Staged By (CodeSystem: NAACCR TNM Pathologic Staged By urn:oid:2.16.840.1.113883.3.520.3.17) (CONF:1169-34244).</sch:assert>
			<sch:assert id="a-1169-34245" test="cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.27']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.27" NAACCR TNM Pathologic Staged By (CONF:1169-34245).</sch:assert>
			<sch:assert id="a-1169-34249-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34249).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors-abstract" abstract="true">
			<sch:assert id="a-1169-33121" test="count(cda:statusCode[@code='completed'])=1">SHALL contain exactly one [1..1] statusCode="completed" (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-33121).</sch:assert>
			<sch:assert id="a-1169-33122" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-33122).</sch:assert>
			<sch:assert id="a-1169-33123" test="cda:effectiveTime[count(cda:low)=1]">The effectiveTime/low documents when detailed site-specific information on the progression of disease for the cancer/tumor was recorded.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-33123).</sch:assert>
			<sch:assert id="a-1169-33170" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33170).</sch:assert>
			<sch:assert id="a-1169-33468" test="count(cda:entryRelationship)=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-33468).
Note: This entryRelationship provides information on the TNM Pathologic Stage Group.</sch:assert>
			<sch:assert id="a-1169-33469" test="cda:entryRelationship[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']])=1]">This entryRelationship SHALL contain exactly one [1..1] TNM Pathologic Stage Group (identifier: urn:hl7ii:2.16.840.1.113883.10.13.40:2015-02-05) (CONF:1169-33469).</sch:assert>
			<sch:assert id="a-1169-33151" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-33151).</sch:assert>
			<sch:assert id="a-1169-33167" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-33167).</sch:assert>
			<sch:assert id="a-1169-33168" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-33168).</sch:assert>
			<sch:assert id="a-1169-33169" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1169-33169).</sch:assert>
			<sch:assert id="a-1169-33657" test="cda:code[@code='75621-3' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75621-3" TNM pathologic staging after surgery panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33657).</sch:assert>
			<sch:assert id="a-1169-33658" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33658).</sch:assert>
			<sch:assert id="a-1169-33189" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33189).</sch:assert>
			<sch:assert id="a-1169-33471" test="cda:entryRelationship[@typeCode='COMP']">This entryRelationship SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-33471).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2015-02-06']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors-abstract"/>
			<sch:assert id="a-1169-33117" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.7'][@extension='2015-02-06'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33117) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.7" (CONF:1169-33149). SHALL contain exactly one [1..1] @extension="2015-02-06" (CONF:1169-33977).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors-abstract" abstract="true">
			<sch:assert id="a-1169-33731" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33731).</sch:assert>
			<sch:assert id="a-1169-33775" test="cda:code[@code='75620-5' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75620-5" TNM clinical staging before treatment panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33775).</sch:assert>
			<sch:assert id="a-1169-33776" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33776).</sch:assert>
			<sch:assert id="a-1169-33772" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-33772).</sch:assert>
			<sch:assert id="a-1169-33773" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-33773).</sch:assert>
			<sch:assert id="a-1169-33777" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33777).</sch:assert>
			<sch:assert id="a-1169-33780" test="@negationInd='true'">SHALL contain exactly one [1..1] @negationInd="true" (CONF:1169-33780).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.31' and @extension = '2015-04-02']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors-abstract"/>
			<sch:assert id="a-1169-33727" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.31'][@extension='2015-04-02'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33727) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.31" (CONF:1169-33769). SHALL contain exactly one [1..1] @extension="2015-04-02" (CONF:1169-34367).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors-abstract" abstract="true">
			<sch:assert id="a-1169-33809" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33809).</sch:assert>
			<sch:assert id="a-1169-33855" test="cda:code[@code='75621-3' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75621-3" TNM pathologic staging after surgery panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33855).</sch:assert>
			<sch:assert id="a-1169-33856" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33856).</sch:assert>
			<sch:assert id="a-1169-33852" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-33852).</sch:assert>
			<sch:assert id="a-1169-33853" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-33853).</sch:assert>
			<sch:assert id="a-1169-34369" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-34369).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.32' and @extension = '2015-04-02']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors-abstract"/>
			<sch:assert id="a-1169-33805" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.32'][@extension='2015-04-02'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33805) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.32" (CONF:1169-33849). SHALL contain exactly one [1..1] @extension="2015-04-02" (CONF:1169-34368).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings" context="cda:name[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.1']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract" abstract="true">
			<sch:assert id="a-81-7290" test="count(@use=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.10637']/voc:code/@value)=1">SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse urn:oid:2.16.840.1.113883.1.11.10637 STATIC 2005-05-01 (CONF:81-7290).</sch:assert>
			<sch:assert id="a-81-7293" test="((cda:country='US' or not(cda:country)) and count(cda:state)=1) or cda:country!='US'">SHOULD contain zero or one [0..1] state (ValueSet: StateValueSet urn:oid:2.16.840.1.113883.3.88.12.80.1 DYNAMIC) (CONF:81-7293). State is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the state MAY be present but MAY be bound to different vocabularies (CONF:81-10024).</sch:assert>
			<sch:assert id="a-81-7294" test="((cda:country='US' or not(cda:country)) and count(cda:postalCode)=1) or cda:country!='US'">SHOULD contain zero or one [0..1] postalCode, which SHOULD be selected from ValueSet PostalCode urn:oid:2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:81-7294). PostalCode is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the postalCode MAY be present but MAY be bound to different vocabularies (CONF:81-10025).</sch:assert>
			<sch:assert id="a-81-7295" test="count(cda:country)=1">SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:81-7295).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings-abstract" abstract="true">
			<sch:assert id="a-81-7760" test="count(cda:addr) &gt; 0">SHOULD contain zero or more [0..*] addr (CONF:81-7760).</sch:assert>
			<sch:assert id="a-81-7761" test="count(cda:telecom) &gt; 0">SHOULD contain zero or more [0..*] telecom (CONF:81-7761).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract" abstract="true"/>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract" abstract="true"/>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-14823" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-14823) such that it SHALL contain exactly one [1..1] Smoking Status - Meaningful Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.78:2014-06-09) (CONF:1098-14824).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7513-c" test="count(cda:effectiveTime) = 1 and cda:effectiveTime[@operator='A'][@xsi:type='PIVL_TS' or @xsi:type='EIVL_TS']">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7513) such that it
Note: This effectiveTime represents the medication frequency (e.g., administration times per day). SHALL contain exactly one [1..1] @operator="A" (CONF:1098-9106). SHALL contain exactly one [1..1] @xsi:type="PIVL_TS" or "EIVL_TS" (CONF:1098-28499).</sch:assert>
			<sch:assert id="a-1098-7514" test="count(cda:routeCode)=1">SHOULD contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet Medication Route FDA urn:oid:2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:1098-7514).</sch:assert>
			<sch:assert id="a-1098-7526" test="cda:doseQuantity[@unit]">This doseQuantity SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7526).</sch:assert>
			<sch:assert id="a-1098-30800-c" test="count(cda:doseQuantity)=1 or count(cda:rateQuantity)=1">Medication Activity *SHOULD* include doseQuantity *OR* rateQuantity (CONF:1098-30800).</sch:assert>
			<sch:assert id="a-1098-31150" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31150).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]/cda:effectiveTime[@xsi:type='IVL_TS']">
			<sch:assert id="a-1098-32775-branch-28494" test="@value">SHOULD contain zero or one [0..1] @value (CONF:1098-32775).
Note: indicates a single-administration timestamp</sch:assert>
			<sch:assert id="a-1098-32776-branch-28494" test="count(cda:low)=1">SHOULD contain zero or one [0..1] low (CONF:1098-32776).
Note: indicates when medication started</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7795" test="count(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7795) such that it SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-10076).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-5375" test="cda:recordTarget/cda:patientRole/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-5375).</sch:assert>
			<sch:assert id="a-1098-5359-c" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:guardian) or cda:recordTarget/cda:patientRole/cda:patient/cda:guardian[count(cda:addr) &gt; 0]">The guardian, if present, SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5359).</sch:assert>
			<sch:assert id="a-1098-16820" test="not(cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:id) or cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16820).</sch:assert>
			<sch:assert id="a-1098-7994" test="not(cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:telecom) or cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7994).</sch:assert>
			<sch:assert id="a-1098-16821" test="not(cda:dataEnterer/cda:assignedEntity/cda:id) or cda:dataEnterer/cda:assignedEntity/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16821).</sch:assert>
			<sch:assert id="a-1098-7996" test="not(cda:dataEnterer/cda:assignedEntity/cda:telecom) or cda:dataEnterer/cda:assignedEntity/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7996).</sch:assert>
			<sch:assert id="a-1098-9946-c" test="true()">If assignedEntity/id is a provider then this id, *SHOULD* include zero or one [0..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-9946).</sch:assert>
			<sch:assert id="a-1098-16822" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16822).</sch:assert>
			<sch:assert id="a-1098-7998" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:telecom[@use]">This telecom SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7998).</sch:assert>
			<sch:assert id="a-1098-5579" test="count(cda:legalAuthenticator)=1">Heading: legalAuthenticator
The legalAuthenticator identifies the single person legally responsible for the document and must be present if the document has been legally authenticated. A clinical document that does not contain this element has not been legally authenticated.
The act of legal authentication requires a certain privilege be granted to the legal authenticator depending upon local policy. Based on local practice, clinical documents may be released before legal authentication.  
All clinical documents have the potential for legal authentication, given the appropriate credentials.
Local policies MAY choose to delegate the function of legal authentication to a device or system that generates the clinical document. In these cases, the legal authenticator is a person accepting responsibility for the document, not the generating device or system.
Note that the legal authenticator, if present, must be a person.
SHOULD contain zero or one [0..1] legalAuthenticator (CONF:1098-5579).</sch:assert>
			<sch:assert id="a-1098-7999" test="not(cda:legalAuthenticator/cda:assignedEntity/cda:telecom) or cda:legalAuthenticator/cda:assignedEntity/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7999).</sch:assert>
			<sch:assert id="a-1098-10007-c" test="not(cda:participant) or (cda:participant[@typeCode='IND'] and cda:participant/cda:associatedEntity[@classCode and @classCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.11.20.9.33']/voc:code/@value or @nullFlavor]) or cda:participant[@typeCode!='IND']">When participant/@typeCode is IND, associatedEntity/@classCode SHOULD be selected from ValueSet urn:oid:2.16.840.1.113883.11.20.9.33 INDRoleclassCodes STATIC 2011-09-30 (CONF:1098-10007).</sch:assert>
			<sch:assert id="a-1098-14839" test="not(cda:documentationOf/cda:serviceEvent) or cda:documentationOf/cda:serviceEvent[count(cda:performer) &gt; 0]">Heading: performer (The performer participant represents clinicians who actually and principally carry out the serviceEvent. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patient’s key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors.)
This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:1098-14839).</sch:assert>
			<sch:assert id="a-1098-14847" test="not(cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:id) or cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-14847).</sch:assert>
			<sch:assert id="a-1098-14842" test="not(cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity) or cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity[count(cda:code)=1]">This assignedEntity SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-14842).</sch:assert>
			<sch:assert id="a-1098-32889" test="not(cda:documentationOf/cda:serviceEvent/cda:performer/cda:functionCode) or cda:documentationOf/cda:serviceEvent/cda:performer/cda:functionCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.10267']/voc:code/@value]">The functionCode, if present, SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet ParticipationFunction urn:oid:2.16.840.1.113883.1.11.10267 STATIC 2014-09-01 (CONF:1098-32889).</sch:assert>
			<sch:assert id="a-1098-5259-v" test="count(cda:confidentialityCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.16926']/voc:code/@value or @nullFlavor])=1">SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind urn:oid:2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:1098-5259).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-29416-branch-29416-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator">
			<sch:assert id="a-1098-16824-branch-29416" test="not(cda:assignedEntity/cda:id) or cda:assignedEntity/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier  (CONF:1098-16824).</sch:assert>
			<sch:assert id="a-1098-8000-branch-29416" test="not(cda:assignedEntity/cda:telecom) or cda:assignedEntity/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-8000).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5283-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>  
			<sch:assert id="a-1098-5300-c" test="string-length(cda:birthTime/@value) &gt;= 8">*SHOULD* be precise to day (CONF:1098-5300).</sch:assert>
			<sch:assert id="a-1098-5303" test="count(cda:maritalStatusCode[@codeSystem='urn:oid:2.16.840.1.113883.5.2'] and @codeSystem=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.1.11.12212']/voc:code/@value)=1">This patient SHOULD contain zero or one [0..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status urn:oid:2.16.840.1.113883.1.11.12212 DYNAMIC (CONF:1098-5303).</sch:assert>
			<sch:assert id="a-1098-5326" test="not(cda:guardian) or cda:guardian[count(cda:code)=1]">The guardian, if present, SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet Personal And Legal Relationship Role Type urn:oid:2.16.840.1.113883.11.20.12.1 DYNAMIC (CONF:1098-5326).</sch:assert>
			<sch:assert id="a-1098-5382" test="not(cda:guardian) or cda:guardian[count(cda:telecom) &gt; 0]">The guardian, if present, SHOULD contain zero or more [0..*] telecom (CONF:1098-5382).</sch:assert>
			<sch:assert id="a-1098-7993" test="not(cda:guardian/cda:telecom) or cda:guardian/cda:telecom[@use]">The telecom, if present, SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7993).</sch:assert>
			<sch:assert id="a-1098-5404" test="not(cda:birthplace/cda:place/cda:addr) or cda:birthplace/cda:place/cda:addr[count(cda:country)=1]">This addr SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:1098-5404).</sch:assert>
			<sch:assert id="a-1098-5402-c" test="count(cda:birthplace/cda:place/cda:addr[cda:country='US'][count(cda:state)!=1])=0">If country is US, this addr SHOULD contain zero to one [0..1] state, which SHALL be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC (CONF:1098-5402).</sch:assert>
			<sch:assert id="a-1098-9965" test="cda:languageCommunication[count(cda:proficiencyLevelCode)=1]">Such languageCommunications SHOULD contain zero or one [0..1] proficiencyLevelCode, which SHALL be selected from ValueSet LanguageAbilityProficiency urn:oid:2.16.840.1.113883.1.11.12199 DYNAMIC (CONF:1098-9965).</sch:assert>
			<sch:assert id="a-1098-5414" test="cda:languageCommunication[count(cda:preferenceInd)=1]">Such languageCommunications SHOULD contain zero or one [0..1] preferenceInd (CONF:1098-5414).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5448-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor">
			<sch:assert id="a-1098-32882-c" test="not(cda:assignedPerson) or count(cda:id[@root='2.16.840.1.113883.4.6'][@extension])=1">If this assignedAuthor is an assignedPerson
This assignedAuthor SHOULD contain zero or one [0..1] id (CONF:1098-32882) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-32884). SHOULD contain zero or one [0..1] @extension (CONF:1098-32885).</sch:assert>
			<sch:assert id="a-1098-16787" test="not(cda:assignedPerson) or count(cda:code)=1">Only if this assignedAuthor is an assignedPerson should the assignedAuthor contain a code.
This assignedAuthor SHOULD contain zero or one [0..1] code (CONF:1098-16787).</sch:assert>
			<sch:assert id="a-1098-16788-v" test="not(cda:code) or cda:code[@code]">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-16788).</sch:assert>
			<sch:assert id="a-1098-7995" test="cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7995).</sch:assert>
			<sch:assert id="a-1098-5430-c" test="count(cda:assignedPerson)=1">This assignedAuthor SHOULD contain zero or one [0..1] assignedPerson (CONF:1098-5430).</sch:assert>
			<sch:assert id="a-1098-16783-c" test="count(cda:assignedAuthoringDevice)=1">This assignedAuthor SHOULD contain zero or one [0..1] assignedAuthoringDevice (CONF:1098-16783).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5271-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:addr">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>  
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5386-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:guardianPerson">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>  
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5422-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:addr">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>  
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5452-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5460-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5470-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5559-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5568-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informationRecipient/cda:intendedRecipient/cda:informationRecipient">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5589-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5598-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-16789-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:assignedPerson">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5359-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5256-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5580-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5445-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19203" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19203).</sch:assert>
			<sch:assert id="a-1098-19204" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-19204).</sch:assert>
			<sch:assert id="a-1098-19205" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-19205).</sch:assert>
			<sch:assert id="a-1098-19207-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4'] or cda:code[@codeSystem='2.16.840.1.113883.6.13']">This @code *SHOULD* be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and *MAY* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19207).</sch:assert>
			<sch:assert id="a-1098-7662" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7662).</sch:assert>
			<sch:assert id="a-1098-7683" test="count(cda:targetSiteCode) &gt; 0">In the case of an implanted medical device, targetSiteCode is used to record the location of the device, in or on the patient's body.
SHOULD contain zero or more [0..*] targetSiteCode (CONF:1098-7683).</sch:assert>
			<sch:assert id="a-1098-7716" test="not(cda:specimen/cda:specimenRole) or cda:specimen/cda:specimenRole[count(cda:id) &gt; 0]">This specimenRole SHOULD contain zero or more [0..*] id (CONF:1098-7716).</sch:assert>
			<sch:assert id="a-1098-7718" test="count(cda:performer[count(cda:assignedEntity[count(cda:id) &gt; 0][count(cda:addr) &gt; 0][count(cda:telecom) &gt; 0])=1]) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1098-7718) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1098-7720). This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-7722). This assignedEntity SHALL contain at least one [1..*] addr (CONF:1098-7731). This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-7732).</sch:assert>
			<sch:assert id="a-1098-32479" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain at least one [1..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32479).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:performer[cda:assignedEntity[cda:id][cda:addr][cda:telecom]]">
			<sch:assert id="a-1098-7733-branch-29746" test="cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-7733).</sch:assert>
			<sch:assert id="a-1098-7734-branch-29746" test="not(cda:assignedEntity/cda:representedOrganization) or cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-7734).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31147" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31147).</sch:assert>
			<sch:assert id="a-1098-9045-v" test="count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.88.12.3221.7.2']/voc:code/@value or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-9045).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31146" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31146).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7881" test="count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7881) such that it SHALL contain exactly one [1..1] Problem Concern Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2014-06-09) (CONF:1098-15505).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-30440" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30440).</sch:assert>
			<sch:assert id="a-1098-31032" test="count(cda:code)=1">Records the type of encounter ordered or recommended.
SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Encounter Planned urn:oid:2.16.840.1.113883.11.20.9.52 DYNAMIC (CONF:1098-31032).</sch:assert>
			<sch:assert id="a-1098-32045" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">The author in a planned encounter represents the clinician who is requesting or planning the encounter.
SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32045).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-30447" test="count(cda:effectiveTime)=1">The effectiveTime in a planned procedure represents the time that the procedure should occur.
SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30447).</sch:assert>
			<sch:assert id="a-1098-31977-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4']">The procedure/code in a planned procedure *SHOULD* be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) *OR* SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and *MAY* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) *OR* ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1098-31977).</sch:assert>
			<sch:assert id="a-1098-31979" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])=1">The author in a planned procedure represents the clinician who is requesting or planning the procedure.
SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31979).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-32046" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])=1">The author in a planned medication activity represents the clinician who is requesting or planning the medication activity.
SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32046).</sch:assert>
			<sch:assert id="a-1098-32133" test="not(cda:doseQuantity) or cda:doseQuantity[@unit]">The doseQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32133).</sch:assert>
			<sch:assert id="a-1098-32134" test="not(cda:rateQuantity) or cda:rateQuantity[@unit]">The rateQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32134).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7488" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7488).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31148" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31148).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7310" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-7310).</sch:assert>
			<sch:assert id="a-1098-7301-v" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result urn:oid:2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:1098-7301).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7143" test="count(cda:value[@codeSystem='2.16.840.1.113883.6.96' or @nullFlavor])=1">SHOULD contain zero or one [0..1] value, which SHOULD be selected from CodeSystem SNOMED CT (urn:oid:2.16.840.1.113883.6.96) (CONF:1098-7143).</sch:assert>
			<sch:assert id="a-1098-7147" test="count(cda:interpretationCode) &gt; 0">SHOULD contain zero or more [0..*] interpretationCode (CONF:1098-7147).</sch:assert>
			<sch:assert id="a-1098-7149" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-7149).</sch:assert>
			<sch:assert id="a-1098-7150" test="count(cda:referenceRange) &gt; 0">SHOULD contain zero or more [0..*] referenceRange (CONF:1098-7150).</sch:assert>
			<sch:assert id="a-1098-32610-c" test="(cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.6.96']) or not(cda:value[@xsi:type='CD'])">If Observation/value is a CD (*xsi:type*=*"CD"*) the value SHOULD be SNOMED-CT (CONF:1098-32610).</sch:assert>
			<sch:assert id="a-1098-7133-v" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1098-7133).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings" context="cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31153" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31153).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7271" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7271) such that it SHALL contain exactly one [1..1] Vital Signs Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.26:2014-06-09) (CONF:1098-15517).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19218-c" test="cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12']">SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) OR SNOMED CT (codeSystem 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (codeSystem 2.16.840.1.113883.6.12) (CONF:1098-19218). Laboratory results SHOULD be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or other constrained terminology named by the US Department of Health and Human Services Office of National Coordinator or other federal agency (CONF:1098-19219).</sch:assert>
			<sch:assert id="a-1098-31149" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31149).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31152" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31152).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7119" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7119) such that it SHALL contain exactly one [1..1] Result Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2014-06-09) (CONF:1098-15515).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8914-c" test="cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity[count(cda:code)=1]">This assignedEntity SHOULD contain zero or one [0..1] code (CONF:1098-8914).</sch:assert>
			<sch:assert id="a-1098-8912-c" test="cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-8912).</sch:assert>
			<sch:assert id="a-1098-8913-c" test="not(cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:representedOrganization) or cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:representedOrganization[count(cda:name)=1]">The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:1098-8913).</sch:assert>
			<sch:assert id="a-1098-8961" test="count(cda:performer[count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88'])=1][count(cda:assignedEntity[count(cda:code[@code='GUAR'][@codeSystem='2.16.840.1.113883.5.110'])=1])=1])=1">This performer represents the Guarantor.
SHOULD contain zero or one [0..1] performer="PRF" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8961) such that it SHALL contain exactly one [1..1] templateId (CONF:1098-16810). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.88" Guarantor Performer (CONF:1098-16811). SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8962). This assignedEntity SHALL contain exactly one [1..1] code (CONF:1098-8968). This code SHALL contain exactly one [1..1] @code="GUAR" Guarantor (CONF:1098-16096). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.110" (CONF:1098-32165).</sch:assert>
			<sch:assert id="a-1098-16078-c" test="cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole/cda:code[@code]">This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Coverage Role Type urn:oid:2.16.840.1.113883.1.11.18877 DYNAMIC (CONF:1098-16078).</sch:assert>
			<sch:assert id="a-1098-8956-c" test="cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole[count(cda:addr)=1]">This participantRole SHOULD contain zero or one [0..1] addr (CONF:1098-8956). The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1098-10484).</sch:assert>
			<sch:assert id="a-1098-8932-c" test="cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole[count(cda:playingEntity)=1]">This participantRole SHOULD contain zero or one [0..1] playingEntity (CONF:1098-8932).</sch:assert>
			<sch:assert id="a-1098-8934" test="count(cda:participant[@typeCode='HLD'][count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90'])=1][count(cda:participantRole[count(cda:id) &gt; 0])=1])=1">When the Subscriber is the patient, the participant element describing the subscriber *SHALL NOT* be present. This information will be recorded instead in the data elements used to record member information.
SHOULD contain zero or one [0..1] participant (CONF:1098-8934) such that it SHALL contain exactly one [1..1] @typeCode="HLD" Holder (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8935). SHALL contain exactly one [1..1] templateId (CONF:1098-16813). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.90" Policy Holder Participant (CONF:1098-16815). SHALL contain exactly one [1..1] participantRole (CONF:1098-8936). This participantRole SHALL contain at least one [1..*] id (CONF:1098-8937). This id is a unique identifier for the subscriber of the coverage (CONF:1098-10120).</sch:assert>
			<sch:assert id="a-1098-8903-v" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Payer urn:oid:2.16.840.1.114222.4.11.3591 DYNAMIC (CONF:1098-8903).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8961-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]">
			<sch:assert id="a-1098-8963-c" test="count(cda:time)=1">SHOULD contain zero or one [0..1] time (CONF:1098-8963).</sch:assert>
			<sch:assert id="a-1098-8964-c" test="cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-8964).</sch:assert>
			<sch:assert id="a-1098-8965-c" test="cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1098-8965).</sch:assert>
			<sch:assert id="a-1098-8967-c" test="cda:assignedEntity/cda:assignedPerson/cda:name or cda:assignedEntity/cda:representedOrganization/cda:name">SHOULD include assignedEntity/assignedPerson/name AND/OR assignedEntity/representedOrganization/name (CONF:1098-8967).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']][cda:participantRole[cda:id][cda:code]]">
			<sch:assert id="a-1098-8918-branch-33705" test="count(cda:time)=1">SHOULD contain zero or one [0..1] time (CONF:1098-8918).</sch:assert>
			<sch:assert id="a-1098-8919-branch-33705" test="not(cda:time) or cda:time[count(cda:low)=1]">The time, if present, SHOULD contain zero or one [0..1] low (CONF:1098-8919).</sch:assert>
			<sch:assert id="a-1098-8920-branch-33705" test="not(cda:time) or cda:time[count(cda:high)=1]">The time, if present, SHOULD contain zero or one [0..1] high (CONF:1098-8920).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33722-branch-33722-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']][cda:participantRole[cda:id]]">
			<sch:assert id="a-1098-8925-branch-33722" test="cda:participantRole[count(cda:addr)=1]">This participantRole SHOULD contain zero or one [0..1] addr (CONF:1098-8925). The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1098-10483).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-8964-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10484-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10483-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7959" test="count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7959) such that it SHALL contain exactly one [1..1] Coverage Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.60:2014-06-09) (CONF:1098-15501).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31671" test="cda:assignedAuthor[count(cda:code)=1]">This assignedAuthor SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-31671).</sch:assert>
			<sch:assert id="a-1098-32315-c" test="not(tested)">If the content is patient authored the code *SHOULD* be selected from Personal And Legal Relationship Role Type (2.16.840.1.113883.11.20.12.1) (CONF:1098-32315).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8593" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-8593).</sch:assert>
			<sch:assert id="a-1098-32427-v" test="count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.88.12.3221.7.2']/voc:code/@value or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-32427).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-15248" test="cda:subject/cda:relatedSubject[count(cda:subject)=1]">This relatedSubject SHOULD contain zero or one [0..1] subject (CONF:1098-15248).</sch:assert>
			<sch:assert id="a-1098-15249-c" test="count(cda:subject/cda:relatedSubject/cda:subject/sdtc:id) &gt; 0">The subject SHOULD contain zero or more [0..*] sdtc:id. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the id element (CONF:1098-15249).</sch:assert>
			<sch:assert id="a-1098-15976" test="not(cda:subject/cda:relatedSubject/cda:subject) or cda:subject/cda:relatedSubject/cda:subject[count(cda:birthTime)=1]">The subject, if present, SHOULD contain zero or one [0..1] birthTime (CONF:1098-15976).</sch:assert>
			<sch:assert id="a-1098-15247-v" test="cda:subject/cda:relatedSubject/cda:code[@code]">This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set urn:oid:2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:1098-15247).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings-abstract" abstract="true">
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract"/>
			<sch:assert id="a-1126-33242" test="cda:name[count(cda:suffix)=1]">SHOULD contain exactly one [1..1] suffix (CONF:1126-33242).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract"/>
			<sch:assert id="a-1126-33927" test="count(cda:performer[count(cda:assignedEntity)=1]) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1126-33927) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33928).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33930-branch-61244" test="count(cda:telecom) &gt; 0">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33930).</sch:assert>
			<sch:assert id="a-1126-33931-branch-61244" test="count(cda:assignedPerson)=1">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33931).</sch:assert>
			<sch:assert id="a-1126-33933-branch-61244" test="count(cda:id) &gt; 0">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33933).
Note: Local Cancer Registry approved provider identifier</sch:assert>
			<sch:assert id="a-1126-33934-branch-61244-c" test="count(cda:addr) &gt; 0">This assignedEntity SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33934).</sch:assert>
			<sch:assert id="a-1126-33936-branch-61244-c" test="not(cda:assignedPerson) or cda:assignedPerson[count(cda:name) &gt; 0]">The assignedPerson, if present, SHOULD contain zero or more [0..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33936).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-addr-1126-33934-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-personName-1126-33936-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']">
			<sch:assert id="a-1126-33939-branch-49430" test="cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33939).</sch:assert>
			<sch:assert id="a-1126-33940-branch-49430" test="cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33940) such that it</sch:assert>
			<sch:assert id="a-1126-33942-branch-49430" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33942).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1126-33979-branch-49430" test="cda:assignedEntity[count(cda:representedOrganization[count(cda:name)])=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33979) such that it SHOULD contain zero or one [0..1] name (CONF:1126-33981).</sch:assert>
			<sch:assert id="a-1126-33943-branch-49430-c" test="cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33943).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-addr-1126-33943-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-personName-1126-33945-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF']/cda:assignedEntity/cda:assignedPerson"> 
			<sch:assert id="a-1126-33945" test="count(cda:name)=1">SHOULD contain zero or more [0..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33945).</sch:assert>
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61255-branch-61255-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF'][cda:assignedEntity][cda:id[@root='2.16.840.1.113883.4.6']]">
			<sch:assert id="a-1126-33941-branch-61255-c" test="count(cda:assignedEntity/cda:id[@root='2.16.840.1.113883.4.6']) &gt; 0">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33941).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33330" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1126-33330).</sch:assert>
			<sch:assert id="a-1126-33331" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33331).</sch:assert>
			<sch:assert id="a-1126-33332" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33332).</sch:assert>
			<sch:assert id="a-1126-33333" test="count(cda:targetSiteCode) &gt; 0">SHOULD contain zero or more [0..*] targetSiteCode (CONF:1126-33333).</sch:assert>
			<sch:assert id="a-1126-33334" test="count(cda:performer) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1126-33334).</sch:assert>
			<sch:assert id="a-1126-33336" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33336).</sch:assert>
			<sch:assert id="a-1126-33346" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1126-33346).</sch:assert>
			<sch:assert id="a-1126-33656" test="not(cda:targetSiteCode) or cda:targetSiteCode[@displayName]">The targetSiteCode, if present, SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 (CONF:1126-33656).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33363" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1126-33363).</sch:assert>
			<sch:assert id="a-1126-33364" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33364).</sch:assert>
			<sch:assert id="a-1126-33365" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33365).</sch:assert>
			<sch:assert id="a-1126-33366" test="count(cda:targetSiteCode) &gt; 0">SHOULD contain zero or more [0..*] targetSiteCode (CONF:1126-33366).</sch:assert>
			<sch:assert id="a-1126-33367" test="count(cda:performer) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1126-33367).</sch:assert>
			<sch:assert id="a-1126-33369" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33369).</sch:assert>
			<sch:assert id="a-1126-33379" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1126-33379).</sch:assert>
			<sch:assert id="a-1126-33585" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33585).</sch:assert>
			<sch:assert id="a-1126-33624" test="count(cda:entryRelationship[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']])=1]) &gt; 0">SHOULD contain at least one [1..*] entryRelationship (CONF:1126-33624) such that it SHALL contain exactly one [1..1] Radiation Regional Dose - cGy (identifier: urn:hl7ii:2.16.840.1.113883.10.13.27:2014-08-08) (CONF:1126-33625).</sch:assert>
			<sch:assert id="a-1126-33655" test="not(cda:targetSiteCode) or cda:targetSiteCode[@displayName]">The targetSiteCode, if present, SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 (CONF:1126-33655).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings-abstract"/>
			<sch:assert id="a-1126-33586-c" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity/cda:assignedPerson[count(cda:name)=1]">The assignedPerson, if present, SHOULD contain zero or one [0..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33586).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-personName-1126-33586-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34011" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHOULD contain zero or one [0..1] low (CONF:1169-34011).</sch:assert>
			<sch:assert id="a-1169-34018-c" test="cda:value[@xsi:type='CD'][@nullFlavor or (count(cda:originalText)=1)]">If value/@nullFlavor is not present then
This value SHOULD contain exactly one [1..1] originalText (CONF:1169-34018).</sch:assert>
			<sch:assert id="a-1169-34019-c" test="cda:value[@xsi:type='CD'][@nullFlavor] or (not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1])">This originalText SHOULD contain exactly one [1..1] reference (CONF:1169-34019).</sch:assert>
			<sch:assert id="a-1169-34020-c" test="cda:value[@xsi:type='CD'][@nullFlavor] or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">This reference SHOULD contain exactly one [1..1] @value (CONF:1169-34020).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34028" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHOULD contain zero or one [0..1] low (CONF:1169-34028).</sch:assert>
			<sch:assert id="a-1169-34035-c" test="cda:value[@xsi:type='CD'][@nullFlavor or (count(cda:originalText)=1)]">If value/@nullFlavor is not present then
This value SHOULD contain exactly one [1..1] originalText (CONF:1169-34035).</sch:assert>
			<sch:assert id="a-1169-34036-c" test="cda:value[@xsi:type='CD'][@nullFlavor] or (not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1])">This originalText SHOULD contain exactly one [1..1] reference (CONF:1169-34036).</sch:assert>
			<sch:assert id="a-1169-34037-c" test="cda:value[@xsi:type='CD'][@nullFlavor] or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">This reference SHOULD contain exactly one [1..1] @value (CONF:1169-34037).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-33880-c" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:name)=1]">This patient SHOULD contain zero or one [0..1] name (CONF:1169-33880).</sch:assert>
			<sch:assert id="a-1169-33905" test="count(cda:documentationOf) &gt; 0">SHOULD contain zero or more [0..*] documentationOf (CONF:1169-33905).</sch:assert>
			<sch:assert id="a-1169-33907" test="not(cda:documentationOf/cda:serviceEvent) or cda:documentationOf/cda:serviceEvent[count(cda:performer[count(cda:assignedEntity)=1]) &gt; 0]">This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:1169-33907) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1169-33908).</sch:assert>
			<sch:assert id="a-1169-33183-c" test="cda:recordTarget/cda:patientRole/cda:patient[count(sdtc:deceasedInd)=1]">This patient *SHOULD* contain zero or one [0..1] *sdtc:deceasedInd*. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedInd element (CONF:1169-33183).</sch:assert>
			<sch:assert id="a-1169-33184-c" test="cda:recordTarget/cda:patientRole/cda:patient[count(sdtc:deceasedTime)=1]">This patient *SHOULD* contain zero or one [0..1] *sdtc:deceasedTime*. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedTime element (CONF:1169-33184).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72125-branch-72125-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1169-33912-branch-72125" test="count(cda:id[@root='2.16.840.1.113883.4.6']) &gt; 0">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1169-33912).</sch:assert>
			<sch:assert id="a-1169-33911-branch-72125" test="count(cda:assignedPerson)=1">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1169-33911).</sch:assert>
			<sch:assert id="a-1169-33910-branch-72125" test="count(cda:telecom) &gt; 0">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1169-33910).</sch:assert>
			<sch:assert id="a-1169-33916-branch-72125-c" test="not(cda:assignedPerson) or cda:assignedPerson[count(cda:name)=1]">The assignedPerson, if present, SHOULD contain zero or one [0..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1169-33916).</sch:assert>
			<sch:assert id="a-1169-33913-branch-72125" test="count(cda:id) &gt; 0">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1169-33913).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1169-33914-branch-72125-c" test="count(cda:addr) &gt; 0">This assignedEntity SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33914).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72073-branch-72073-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]">
			<sch:assert id="a-1169-33917-branch-72073" test="cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1169-33917).</sch:assert>
			<sch:assert id="a-1169-33918-branch-72073" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1169-33918).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1169-33919-branch-72073-c" test="cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33919).</sch:assert>
			<sch:assert id="a-1169-33924-branch-72073-c" test="cda:assignedEntity/cda:representedOrganization[count(cda:id)&gt;0]">This representedOrganization SHOULD contain zero or more [0..*] id (CONF:1169-33924).
Note: This id is to be used to provide the Cancer Registry approved local identifier. This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1169-33926-branch-72073-c" test="cda:assignedEntity/cda:representedOrganization[count(cda:addr) &gt; 0]">This representedOrganization SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33926).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72078-branch-72078-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF']/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1169-34001-branch-72078" test="count(cda:id[@root='2.16.840.1.113883.4.6' and @extension]) &gt; 0">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1169-34001). SHOULD contain zero or one [0..1] @extension (CONF:1169-34002).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72082-branch-72082-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization">
			<sch:assert id="a-1169-33898-branch-72082" test="count(cda:telecom) &gt; 0">SHOULD contain zero or more [0..*] telecom (CONF:1169-33898).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72080-branch-72080-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility">
			<sch:assert id="a-1169-33901-branch-72080" test="count(cda:id) &gt; 0">SHOULD contain zero or more [0..*] id (CONF:1169-33901).
Note: This id is to be used to provide the Cancer Registry approved local identifier for the healthcare facility</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-72120-branch-72120-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]">
			<sch:assert id="a-1169-33725-branch-72120" test="cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:manufacturerModelName)=1]">This assignedAuthoringDevice SHOULD contain zero or one [0..1] manufacturerModelName (CONF:1169-33725).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-patientName-1169-33034-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient/cda:name"> 
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33237-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-32655-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:addr"> 
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings-abstract"/>
		</sch:rule> 
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-33916-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:assignedPerson"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-216-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:assignedPerson"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33914-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33231-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author/cda:assignedAuthor[cda:assignedPerson]/cda:addr">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33688-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33919-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33926-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:representedOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33904-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34058" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34058).</sch:assert>
			<sch:assert id="a-1169-34059" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34059).</sch:assert>
			<sch:assert id="a-1169-34060" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34060).</sch:assert>
			<sch:assert id="a-1169-34069" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@displayName]">This value SHOULD contain zero or one [0..1] @displayName (CONF:1169-34069).</sch:assert>
			<sch:assert id="a-1169-34257" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34257).</sch:assert>
			<sch:assert id="a-1169-34258" test="not(cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText) or cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34258).</sch:assert>
			<sch:assert id="a-1169-34259" test="not(cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34259).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-32442" test="count(cda:text)=1">SHOULD contain zero or one [0..1] text (CONF:1169-32442).</sch:assert>
			<sch:assert id="a-1169-32443" test="not(cda:text) or cda:text[count(cda:reference)=1]">The text, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-32443).</sch:assert>
			<sch:assert id="a-1169-32638" test="cda:targetSiteCode[@displayName]">This targetSiteCode SHOULD contain zero or one [0..1] @displayName (CONF:1169-32638).</sch:assert>
			<sch:assert id="a-1169-33017" test="cda:targetSiteCode/cda:qualifier/cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-33017).</sch:assert>
			<sch:assert id="a-1169-33018" test="not(cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText) or cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-33018).</sch:assert>
			<sch:assert id="a-1169-33706" test="cda:targetSiteCode[@sdtc:valueSet]">This targetSiteCode SHOULD contain zero or one [0..1] @sdtc:valueSet (CONF:1169-33706).</sch:assert>
			<sch:assert id="a-1169-33019" test="not(cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText/cda:reference) or cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-33019).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-72868-branch-72868-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:assert id="a-1169-32476-branch-72868-c" test="cda:value[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.14']/voc:code/@value]">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.4.14 DYNAMIC (CONF:1169-32476).</sch:assert>
			<sch:assert id="a-1169-32615-branch-72868-c" test="cda:value[@displayName and @displayName=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.14']/voc:code/@displayName]">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.4.14 DYNAMIC (CONF:1169-32615).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-72875-branch-72875-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:assert id="a-1169-32483-branch-72875-c" test="cda:value[@code]">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.4.3 DYNAMIC (CONF:1169-32483).</sch:assert>
			<sch:assert id="a-1169-32484-branch-72875" test="cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-32484).</sch:assert>
			<sch:assert id="a-1169-32485-branch-72875" test="not(cda:value/cda:originalText) or cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-32485).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1169-32486-branch-72875" test="not(cda:value/cda:originalText/cda:reference) or cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-32486).</sch:assert>
			<sch:assert id="a-1169-32620-branch-72875-c" test="cda:value[@displayName]">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.4.3 DYNAMIC (CONF:1169-32620).</sch:assert>
			<sch:assert id="a-1169-32633-branch-72875" test="cda:value[@codeSystem='2.16.840.1.113883.3.520.3.3']">This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.3 " (CodeSystem: NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.3.3 STATIC) (CONF:1169-32633).</sch:assert>
			<sch:assert id="a-1169-33705-branch-72875" test="cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.3']">This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.3" (CodeSystem: NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.3.3 STATIC) (CONF:1169-33705).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-72886-branch-72886-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:assert id="a-1169-33612-branch-72886" test="cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-33612).</sch:assert>
			<sch:assert id="a-1169-33613-branch-72886" test="not(cda:value/cda:originalText) or cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-33613).</sch:assert>
			<sch:assert id="a-1169-33614-branch-72886" test="not(cda:value/cda:originalText/cda:reference) or cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-33614).</sch:assert>
			<sch:assert id="a-1169-33609-branch-72886" test="cda:value[@codeSystem='2.16.840.1.113883.3.520.3.15']">This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.15" (CodeSystem: NAACCR Grade urn:oid:2.16.840.1.113883.3.520.3.15 STATIC) (CONF:1169-33609).</sch:assert>
			<sch:assert id="a-1169-33610-branch-72886-c" test="count(cda:value[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.15']/voc:code/@value])=1">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Grade urn:oid:2.16.840.1.113883.3.520.4.15 (CONF:1169-33610).</sch:assert>
			<sch:assert id="a-1169-33611-branch-72886-c" test="count(cda:value[@displayName=document('voc.xml')/voc:systems/voc:system[@valueSetOid='urn:oid:2.16.840.1.113883.3.520.4.15']/voc:code/@displayName])=1">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Grade urn:oid:2.16.840.1.113883.3.520.4.15 (CONF:1169-33611).</sch:assert>
			<sch:assert id="a-1169-33704-branch-72886" test="cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.15']">This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.15" (CodeSystem: NAACCR Grade urn:oid:2.16.840.1.113883.3.520.3.15 STATIC) (CONF:1169-33704).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34084" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34084).</sch:assert>
			<sch:assert id="a-1169-34085" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34085).</sch:assert>
			<sch:assert id="a-1169-34086" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34086).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34108" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34108).</sch:assert>
			<sch:assert id="a-1169-34109" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34109).</sch:assert>
			<sch:assert id="a-1169-34110" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34110).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34124" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34124).</sch:assert>
			<sch:assert id="a-1169-34125" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34125).</sch:assert>
			<sch:assert id="a-1169-34126" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34126).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34140" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34140).</sch:assert>
			<sch:assert id="a-1169-34141" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34141).</sch:assert>
			<sch:assert id="a-1169-34142" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34142).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34157" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34157).</sch:assert>
			<sch:assert id="a-1169-34158" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34158).</sch:assert>
			<sch:assert id="a-1169-34159" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34159).</sch:assert>
			<sch:assert id="a-1169-34166" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34166).</sch:assert>
			<sch:assert id="a-1169-34167" test="not(cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText) or cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34167).</sch:assert>
			<sch:assert id="a-1169-34170" test="cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@displayName]">This value SHOULD contain zero or one [0..1] @displayName (CONF:1169-34170).</sch:assert>
			<sch:assert id="a-1169-34172" test="not(cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34172).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34198" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34198).</sch:assert>
			<sch:assert id="a-1169-34199" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34199).</sch:assert>
			<sch:assert id="a-1169-34200" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34200).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34213" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34213).</sch:assert>
			<sch:assert id="a-1169-34214" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34214).</sch:assert>
			<sch:assert id="a-1169-34215" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34215).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34230" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34230).</sch:assert>
			<sch:assert id="a-1169-34231" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34231).</sch:assert>
			<sch:assert id="a-1169-34232" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34232).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34246" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34246).</sch:assert>
			<sch:assert id="a-1169-34247" test="not(cda:value[@xsi:type='CD']/cda:originalText) or cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34247).</sch:assert>
			<sch:assert id="a-1169-34248" test="not(cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34248).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2015-02-06']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.31' and @extension = '2015-04-02']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.32' and @extension = '2015-04-02']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
</sch:schema>
