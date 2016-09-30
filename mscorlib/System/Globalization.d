module mscorlib.System.Globalization;

import mscorlib.System :
    DotNetObject,
    ICloneable,
    String,
    DateTime,
    IntPtr,
    IFormatProvider,
    ArgumentException,
    Nullable1,
    TokenType,
    TimeSpan,
    IEquatable1,
    Guid;
import mscorlib.System.Runtime.Serialization :
    IDeserializationCallback,
    ISerializable;
import mscorlib.System.Collections.Generic :
    Dictionary2,
    List1;
import mscorlib.System.Collections :
    Hashtable,
    IEnumerator;
import mscorlib.System.Resources :
    WindowsRuntimeResourceManagerBase;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\BidiCategory.cs'
//
// Ignored: [Serializable]
public enum BidiCategory
{
    LeftToRight = 0,
    LeftToRightEmbedding = 1,
    LeftToRightOverride = 2,
    RightToLeft = 3,
    RightToLeftArabic = 4,
    RightToLeftEmbedding = 5,
    RightToLeftOverride = 6,
    PopDirectionalFormat = 7,
    EuropeanNumber = 8,
    EuropeanNumberSeparator = 9,
    EuropeanNumberTerminator = 10,
    ArabicNumber = 11,
    CommonNumberSeparator = 12,
    NonSpacingMark = 13,
    BoundaryNeutral = 14,
    ParagraphSeparator = 15,
    SegmentSeparator = 16,
    Whitespace = 17,
    OtherNeutrals = 18,
    LeftToRightIsolate = 19,
    RightToLeftIsolate = 20,
    FirstStrongIsolate = 21,
    PopDirectionIsolate = 22,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\Calendar.cs'
//
//// This abstract class represents a calendar. A calendar reckons time in
//    // divisions such as weeks, months and years. The number, length and start of
//    // the divisions vary in each calendar.
//    //
//    // Any instant in time can be represented as an n-tuple of numeric values using
//    // a particular calendar. For example, the next vernal equinox occurs at (0.0, 0
//    // , 46, 8, 20, 3, 1999) in the Gregorian calendar. An  implementation of
//    // Calendar can map any DateTime value to such an n-tuple and vice versa. The
//    // DateTimeFormat class can map between such n-tuples and a textual
//    // representation such as "8:46 AM March 20th 1999 AD".
//    //
//    // Most calendars identify a year which begins the current era. There may be any
//    // number of previous eras. The Calendar class identifies the eras as enumerated
//    // integers where the current era (CurrentEra) has the value zero.
//    //
//    // For consistency, the first unit in each interval, e.g. the first month, is
//    // assigned the value one.
//    // The calculation of hour/minute/second is moved to Calendar from GregorianCalendar,
//    // since most of the calendars (or all?) have the same way of calcuating hour/minute/second.
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public abstract class Calendar : DotNetObject, ICloneable
{
    public enum long TicksPerMillisecond/*todo: implement initializer*/ = long();
    public enum long TicksPerSecond/*todo: implement initializer*/ = long();
    public enum long TicksPerMinute/*todo: implement initializer*/ = long();
    public enum long TicksPerHour/*todo: implement initializer*/ = long();
    public enum long TicksPerDay/*todo: implement initializer*/ = long();
    public enum int MillisPerSecond/*todo: implement initializer*/ = int();
    public enum int MillisPerMinute/*todo: implement initializer*/ = int();
    public enum int MillisPerHour/*todo: implement initializer*/ = int();
    public enum int MillisPerDay/*todo: implement initializer*/ = int();
    public enum int DaysPerYear/*todo: implement initializer*/ = int();
    public enum int DaysPer4Years/*todo: implement initializer*/ = int();
    public enum int DaysPer100Years/*todo: implement initializer*/ = int();
    public enum int DaysPer400Years/*todo: implement initializer*/ = int();
    public enum int DaysTo10000/*todo: implement initializer*/ = int();
    public enum long MaxMillis/*todo: implement initializer*/ = long();
    public enum int CAL_GREGORIAN/*todo: implement initializer*/ = int();
    public enum int CAL_GREGORIAN_US/*todo: implement initializer*/ = int();
    public enum int CAL_JAPAN/*todo: implement initializer*/ = int();
    public enum int CAL_TAIWAN/*todo: implement initializer*/ = int();
    public enum int CAL_KOREA/*todo: implement initializer*/ = int();
    public enum int CAL_HIJRI/*todo: implement initializer*/ = int();
    public enum int CAL_THAI/*todo: implement initializer*/ = int();
    public enum int CAL_HEBREW/*todo: implement initializer*/ = int();
    public enum int CAL_GREGORIAN_ME_FRENCH/*todo: implement initializer*/ = int();
    public enum int CAL_GREGORIAN_ARABIC/*todo: implement initializer*/ = int();
    public enum int CAL_GREGORIAN_XLIT_ENGLISH/*todo: implement initializer*/ = int();
    public enum int CAL_GREGORIAN_XLIT_FRENCH/*todo: implement initializer*/ = int();
    public enum int CAL_JULIAN/*todo: implement initializer*/ = int();
    public enum int CAL_JAPANESELUNISOLAR/*todo: implement initializer*/ = int();
    public enum int CAL_CHINESELUNISOLAR/*todo: implement initializer*/ = int();
    public enum int CAL_SAKA/*todo: implement initializer*/ = int();
    public enum int CAL_LUNAR_ETO_CHN/*todo: implement initializer*/ = int();
    public enum int CAL_LUNAR_ETO_KOR/*todo: implement initializer*/ = int();
    public enum int CAL_LUNAR_ETO_ROKUYOU/*todo: implement initializer*/ = int();
    public enum int CAL_KOREANLUNISOLAR/*todo: implement initializer*/ = int();
    public enum int CAL_TAIWANLUNISOLAR/*todo: implement initializer*/ = int();
    public enum int CAL_PERSIAN/*todo: implement initializer*/ = int();
    public enum int CAL_UMALQURA/*todo: implement initializer*/ = int();
    public int m_currentEraValue/*todo: implement initializer*/ = int();
    // Ignored: [System.Runtime.Serialization.OptionalField(VersionAdded = 2)]
    private bool m_isReadOnly/*todo: implement initializer*/ = bool();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate property 'BaseCalendarID'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Clone
    //TODO: generate method ReadOnly
    //TODO: generate method VerifyWritable
    //TODO: generate method SetReadOnlyState
    //TODO: generate property 'CurrentEraValue'
    public enum int CurrentEra/*todo: implement initializer*/ = int();
    public int twoDigitYearMax/*todo: implement initializer*/ = int();
    //TODO: generate method CheckAddResult
    //TODO: generate method Add
    //TODO: generate method AddMilliseconds
    //TODO: generate method AddDays
    //TODO: generate method AddHours
    //TODO: generate method AddMinutes
    //TODO: generate method AddMonths
    //TODO: generate method AddSeconds
    //TODO: generate method AddWeeks
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate property 'Eras'
    //TODO: generate method GetHour
    //TODO: generate method GetMilliseconds
    //TODO: generate method GetMinute
    //TODO: generate method GetMonth
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetSecond
    //TODO: generate method GetFirstDayWeekOfYear
    //TODO: generate method GetWeekOfYearFullDays
    //TODO: generate method GetWeekOfYearOfMinSupportedDateTime
    //TODO: generate property 'DaysInYearBeforeMinSupportedYear'
    //TODO: generate method GetWeekOfYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method IsLeapDay
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method GetLeapMonth
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method IsLeapYear
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method TryToDateTime
    //TODO: generate method IsValidYear
    //TODO: generate method IsValidMonth
    //TODO: generate method IsValidDay
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
    //TODO: generate method TimeToTicks
    //TODO: generate method GetSystemTwoDigitYearSetting
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CalendarAlgorithmType.cs'
//
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum CalendarAlgorithmType
{
    Unknown = 0,
    SolarCalendar = 1,
    LunarCalendar = 2,
    LunisolarCalendar = 3,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CalendarData.cs'
//
public class CalendarData : DotNetObject
{
    public enum int MAX_CALENDARS/*todo: implement initializer*/ = int();
    public String sNativeName;
    public String[] saShortDates;
    public String[] saYearMonths;
    public String[] saLongDates;
    public String sMonthDay;
    public String[] saEraNames;
    public String[] saAbbrevEraNames;
    public String[] saAbbrevEnglishEraNames;
    public String[] saDayNames;
    public String[] saAbbrevDayNames;
    public String[] saSuperShortDayNames;
    public String[] saMonthNames;
    public String[] saAbbrevMonthNames;
    public String[] saMonthGenitiveNames;
    public String[] saAbbrevMonthGenitiveNames;
    public String[] saLeapYearMonthNames;
    public int iTwoDigitYearMax/*todo: implement initializer*/ = int();
    public int iCurrentEra/*todo: implement initializer*/ = int();
    public bool bUseUserOverrides;
    public static CalendarData Invariant;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeEraNames
    //TODO: generate method InitializeAbbreviatedEraNames
    //TODO: generate method GetCalendarData
    //TODO: generate method CalendarIdToCultureName
    //TODO: generate method FixupWin7MonthDaySemicolonBug
    //TODO: generate method FindUnescapedCharacter
    //TODO: generate method nativeGetTwoDigitYearMax
    //TODO: generate method nativeGetCalendarData
    //TODO: generate method nativeGetCalendars
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CalendarWeekRule.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum CalendarWeekRule
{
    FirstDay = 0,
    FirstFullWeek = 1,
    FirstFourDayWeek = 2,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CalendricalCalculationsHelper.cs'
//
public class CalendricalCalculationsHelper : DotNetObject
{
    private enum double FullCircleOfArc/*todo: implement initializer*/ = double();
    private enum int HalfCircleOfArc/*todo: implement initializer*/ = int();
    private enum double TwelveHours/*todo: implement initializer*/ = double();
    private enum double Noon2000Jan01/*todo: implement initializer*/ = double();
    public enum double MeanTropicalYearInDays/*todo: implement initializer*/ = double();
    private enum double MeanSpeedOfSun/*todo: implement initializer*/ = double();
    private enum double LongitudeSpring/*todo: implement initializer*/ = double();
    private enum double TwoDegreesAfterSpring/*todo: implement initializer*/ = double();
    private enum int SecondsPerDay/*todo: implement initializer*/ = int();
    private enum int DaysInUniformLengthCentury/*todo: implement initializer*/ = int();
    private enum int SecondsPerMinute/*todo: implement initializer*/ = int();
    private enum int MinutesPerDegree/*todo: implement initializer*/ = int();
    private static long StartOf1810/*todo: implement initializer*/ = long();
    private static long StartOf1900Century/*todo: implement initializer*/ = long();
    private static double[] Coefficients1900to1987/*todo: implement initializer*/ = null;
    private static double[] Coefficients1800to1899/*todo: implement initializer*/ = null;
    private static double[] Coefficients1700to1799/*todo: implement initializer*/ = null;
    private static double[] Coefficients1620to1699/*todo: implement initializer*/ = null;
    private static double[] LambdaCoefficients/*todo: implement initializer*/ = null;
    private static double[] AnomalyCoefficients/*todo: implement initializer*/ = null;
    private static double[] EccentricityCoefficients/*todo: implement initializer*/ = null;
    private static double[] Coefficients/*todo: implement initializer*/ = null;
    private static double[] CoefficientsA/*todo: implement initializer*/ = null;
    private static double[] CoefficientsB/*todo: implement initializer*/ = null;
    //TODO: generate method RadiansFromDegrees
    //TODO: generate method SinOfDegree
    //TODO: generate method CosOfDegree
    //TODO: generate method TanOfDegree
    //TODO: generate method Angle
    //TODO: generate method Obliquity
    //TODO: generate method GetNumberOfDays
    //TODO: generate method GetGregorianYear
    private enum CorrectionAlgorithm
    {
        Default,
        Year1988to2019,
        Year1900to1987,
        Year1800to1899,
        Year1700to1799,
        Year1620to1699,
    }
    private static struct EphemerisCorrectionAlgorithmMap
    {
        //TODO: generate constructor
        public int _lowestYear;
        public CorrectionAlgorithm _algorithm;
    }
    private static EphemerisCorrectionAlgorithmMap[] EphemerisCorrectionTable/*todo: implement initializer*/ = null;
    //TODO: generate method Reminder
    //TODO: generate method NormalizeLongitude
    //TODO: generate method AsDayFraction
    //TODO: generate method PolynomialSum
    //TODO: generate method CenturiesFrom1900
    //TODO: generate method DefaultEphemerisCorrection
    //TODO: generate method EphemerisCorrection1988to2019
    //TODO: generate method EphemerisCorrection1900to1987
    //TODO: generate method EphemerisCorrection1800to1899
    //TODO: generate method EphemerisCorrection1700to1799
    //TODO: generate method EphemerisCorrection1620to1699
    //TODO: generate method EphemerisCorrection
    //TODO: generate method JulianCenturies
    //TODO: generate method IsNegative
    //TODO: generate method CopySign
    //TODO: generate method EquationOfTime
    //TODO: generate method AsLocalTime
    //TODO: generate method Midday
    //TODO: generate method InitLongitude
    //TODO: generate method MiddayAtPersianObservationSite
    //TODO: generate method PeriodicTerm
    //TODO: generate method SumLongSequenceOfPeriodicTerms
    //TODO: generate method Aberration
    //TODO: generate method Nutation
    //TODO: generate method Compute
    //TODO: generate method AsSeason
    //TODO: generate method EstimatePrior
    //TODO: generate method PersianNewYearOnOrBefore
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CharUnicodeInfo.cs'
//
public class CharUnicodeInfo : DotNetObject
{
    private this() {} // prevent instantiation
    public enum wchar HIGH_SURROGATE_START/*todo: implement initializer*/ = wchar();
    public enum wchar HIGH_SURROGATE_END/*todo: implement initializer*/ = wchar();
    public enum wchar LOW_SURROGATE_START/*todo: implement initializer*/ = wchar();
    public enum wchar LOW_SURROGATE_END/*todo: implement initializer*/ = wchar();
    public enum int UNICODE_CATEGORY_OFFSET/*todo: implement initializer*/ = int();
    public enum int BIDI_CATEGORY_OFFSET/*todo: implement initializer*/ = int();
    private static bool s_initialized/*todo: implement initializer*/ = bool();
    // Ignored: // The native pointer to the 12:4:4 index table of the Unicode cateogry data.
    // Ignored: [SecurityCritical]
    private static ushort* s_pCategoryLevel1Index;
    // Ignored: [SecurityCritical]
    private static ubyte* s_pCategoriesValue;
    // Ignored: // The native pointer to the 12:4:4 index table of the Unicode numeric data.
    // Ignored: // The value of this index table is an index into the real value table stored in s_pNumericValues.
    // Ignored: [SecurityCritical]
    private static ushort* s_pNumericLevel1Index;
    // Ignored: // The numeric value table, which is indexed by s_pNumericLevel1Index.
    // Ignored: // Every item contains the value for numeric value.
    // Ignored: // unsafe static double* s_pNumericValues;
    // Ignored: // To get around the IA64 alignment issue.  Our double data is aligned in 8-byte boundary, but loader loads the embeded table starting
    // Ignored: // at 4-byte boundary.  This cause a alignment issue since double is 8-byte.
    // Ignored: [SecurityCritical]
    private static ubyte* s_pNumericValues;
    // Ignored: // The digit value table, which is indexed by s_pNumericLevel1Index.  It shares the same indice as s_pNumericValues.
    // Ignored: // Every item contains the value for decimal digit/digit value.
    // Ignored: [SecurityCritical]
    private static DigitValues* s_pDigitValues;
    public enum String UNICODE_INFO_FILE_NAME/*todo: implement initializer*/ = null;
    public enum int UNICODE_PLANE01_START/*todo: implement initializer*/ = int();
    ////
//        // This is the header for the native data table that we load from UNICODE_INFO_FILE_NAME.
//        //
//        // Excplicit layout is used here since a syntax like char[16] can not be used in sequential layout.
//        [StructLayout(LayoutKind.Explicit)]
    public static struct UnicodeDataHeader
    {
        // Ignored: [FieldOffset(0)]
        public wchar TableName;
        // Ignored: [FieldOffset(0x20)]
        public ushort version_;
        // Ignored: [FieldOffset(0x28)]
        public uint OffsetToCategoriesIndex;
        // Ignored: [FieldOffset(0x2c)]
        public uint OffsetToCategoriesValue;
        // Ignored: [FieldOffset(0x30)]
        public uint OffsetToNumbericIndex;
        // Ignored: [FieldOffset(0x34)]
        public uint OffsetToDigitValue;
        // Ignored: [FieldOffset(0x38)]
        public uint OffsetToNumbericValue;
    }
    //// NOTE: It's important to specify pack size here, since the size of the structure is 2 bytes.  Otherwise,
//        // the default pack size will be 4.
//
//        [StructLayout(LayoutKind.Sequential, Pack=2)]
    public static struct DigitValues
    {
        public byte decimalDigit;
        public byte digit;
    }
    //TODO: generate method InitTable
    //TODO: generate method InternalConvertToUtf32
    //TODO: generate method InternalConvertToUtf32
    //TODO: generate method IsWhiteSpace
    //TODO: generate method IsWhiteSpace
    //TODO: generate method InternalGetNumericValue
    //TODO: generate method InternalGetDigitValues
    //TODO: generate method InternalGetDecimalDigitValue
    //TODO: generate method InternalGetDigitValue
    //TODO: generate method GetNumericValue
    //TODO: generate method GetNumericValue
    //TODO: generate method GetDecimalDigitValue
    //TODO: generate method GetDecimalDigitValue
    //TODO: generate method GetDigitValue
    //TODO: generate method GetDigitValue
    //TODO: generate method GetUnicodeCategory
    //TODO: generate method GetUnicodeCategory
    //TODO: generate method InternalGetUnicodeCategory
    //TODO: generate method InternalGetCategoryValue
    //TODO: generate method GetBidiCategory
    //TODO: generate method InternalGetUnicodeCategory
    //TODO: generate method InternalGetUnicodeCategory
    //TODO: generate method IsCombiningCategory
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\ChineseLunisolarCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Notes about ChineseLunisolarCalendar
//    //
//    ////////////////////////////////////////////////////////////////////////////
//     /*
//     **  Calendar support range:
//     **      Calendar               Minimum             Maximum
//     **      ==========     ==========  ==========
//     **      Gregorian              1901/02/19          2101/01/28
//     **      ChineseLunisolar   1901/01/01          2100/12/29
//     */
//
//    [Serializable]
public class ChineseLunisolarCalendar : EastAsianLunisolarCalendar
{
    public enum int ChineseEra/*todo: implement initializer*/ = int();
    public enum int MIN_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public static DateTime minDate/*todo: implement initializer*/ = DateTime();
    public static DateTime maxDate/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'DaysInYearBeforeMinSupportedYear'
    private static immutable int[] yinfo/*todo: implement initializer*/ = null;
    //TODO: generate property 'MinCalendarYear'
    //TODO: generate property 'MaxCalendarYear'
    //TODO: generate property 'MinDate'
    //TODO: generate property 'MaxDate'
    //TODO: generate property 'CalEraInfo'
    //TODO: generate method GetYearInfo
    //TODO: generate method GetYear
    //TODO: generate method GetGregorianYear
    //TODO: generate constructor
    //TODO: generate method GetEra
    //TODO: generate property 'ID'
    //TODO: generate property 'BaseCalendarID'
    //TODO: generate property 'Eras'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CompareInfo.cs'
//
// Ignored: //
// Ignored: //  Options can be used during string comparison.
// Ignored: //
// Ignored: //  Native implementation (COMNlsInfo.cpp & SortingTable.cpp) relies on the values of these,
// Ignored: //  If you change the values below, be sure to change the values in native part as well.
// Ignored: //
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum CompareOptions
{
    None = 0x00000000,
    IgnoreCase = 0x00000001,
    IgnoreNonSpace = 0x00000002,
    IgnoreSymbols = 0x00000004,
    IgnoreKanaType = 0x00000008,
    IgnoreWidth = 0x00000010,
    OrdinalIgnoreCase = 0x10000000,
    StringSort = 0x20000000,
    Ordinal = 0x40000000,
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class CompareInfo : DotNetObject, IDeserializationCallback
{
    private enum CompareOptions ValidIndexMaskOffFlags/*todo: implement initializer*/ = (cast(CompareOptions)0);
    private enum CompareOptions ValidCompareMaskOffFlags/*todo: implement initializer*/ = (cast(CompareOptions)0);
    private enum CompareOptions ValidHashCodeOfStringMaskOffFlags/*todo: implement initializer*/ = (cast(CompareOptions)0);
    // Ignored: //
    // Ignored: // CompareInfos have an interesting identity.  They are attached to the locale that created them,
    // Ignored: // ie: en-US would have an en-US sort.  For haw-US (custom), then we serialize it as haw-US.
    // Ignored: // The interesting part is that since haw-US doesn't have its own sort, it has to point at another
    // Ignored: // locale, which is what SCOMPAREINFO does.
    // Ignored: [OptionalField(VersionAdded = 2)]
    private String m_name;
    // Ignored: [NonSerialized]
    private String m_sortName;
    // Ignored: [NonSerialized]
    private IntPtr m_dataHandle;
    // Ignored: [NonSerialized]
    private IntPtr m_handleOrigin;
    //TODO: generate constructor
    //TODO: generate method GetCompareInfo
    //TODO: generate method GetCompareInfo
    //TODO: generate method GetCompareInfo
    //TODO: generate method GetCompareInfo
    //TODO: generate method IsSortable
    //TODO: generate method IsSortable
    // Ignored: #region Serialization
    // Ignored: // the following fields are defined to keep the compatibility with Whidbey.
    // Ignored: // don't change/remove the names/types of these fields.
    // Ignored: #if FEATURE_USE_LCID
    // Ignored: [OptionalField(VersionAdded = 1)]
    private int win32LCID;
    private int culture;
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate method OnDeserialization
    //TODO: generate property 'Name'
    private enum int LINGUISTIC_IGNORECASE/*todo: implement initializer*/ = int();
    private enum int NORM_IGNORECASE/*todo: implement initializer*/ = int();
    private enum int NORM_IGNOREKANATYPE/*todo: implement initializer*/ = int();
    private enum int LINGUISTIC_IGNOREDIACRITIC/*todo: implement initializer*/ = int();
    private enum int NORM_IGNORENONSPACE/*todo: implement initializer*/ = int();
    private enum int NORM_IGNORESYMBOLS/*todo: implement initializer*/ = int();
    private enum int NORM_IGNOREWIDTH/*todo: implement initializer*/ = int();
    private enum int SORT_STRINGSORT/*todo: implement initializer*/ = int();
    private enum int COMPARE_OPTIONS_ORDINAL/*todo: implement initializer*/ = int();
    public enum int NORM_LINGUISTIC_CASING/*todo: implement initializer*/ = int();
    private enum int RESERVED_FIND_ASCII_STRING/*todo: implement initializer*/ = int();
    //TODO: generate method GetNativeCompareFlags
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method IsPrefix
    //TODO: generate method IsPrefix
    //TODO: generate method IsSuffix
    //TODO: generate method IsSuffix
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method GetSortKey
    //TODO: generate method GetSortKey
    //TODO: generate method CreateSortKey
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCodeOfString
    //TODO: generate method GetHashCodeOfString
    //TODO: generate method ToString
    //TODO: generate property 'LCID'
    //TODO: generate method InternalInitSortHandle
    //TODO: generate method NativeInternalInitSortHandle
    //TODO: generate method InternalGetGlobalizedHashCode
    //TODO: generate method InternalIsSortable
    //TODO: generate method InternalCompareString
    //TODO: generate method InternalFindNLSStringEx
    //TODO: generate method InternalGetSortKey
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CultureData.cs'
//
////
//    // List of culture data
//    // Note the we cache overrides.
//    // Note that localized names (resource names) aren't available from here.
//    //
//
//    //
//    // Our names are a tad confusing.
//    //
//    // sWindowsName -- The name that windows thinks this culture is, ie:
//    //                            en-US if you pass in en-US
//    //                            de-DE_phoneb if you pass in de-DE_phoneb
//    //                            fj-FJ if you pass in fj (neutral, on a pre-Windows 7 machine)
//    //                            fj if you pass in fj (neutral, post-Windows 7 machine)
//    //
//    // sRealName -- The name you used to construct the culture, in pretty form
//    //                       en-US if you pass in EN-us
//    //                       en if you pass in en
//    //                       de-DE_phoneb if you pass in de-DE_phoneb
//    //
//    // sSpecificCulture -- The specific culture for this culture
//    //                             en-US for en-US
//    //                             en-US for en
//    //                             de-DE_phoneb for alt sort
//    //                             fj-FJ for fj (neutral)
//    //
//    // sName -- The IETF name of this culture (ie: no sort info, could be neutral)
//    //                en-US if you pass in en-US
//    //                en if you pass in en
//    //                de-DE if you pass in de-DE_phoneb
//    //
//
//    // StructLayout is needed here otherwise compiler can re-arrange the fields.
//    // We have to keep this in-sync with the definition in comnlsinfo.h
//    //
//    // WARNING WARNING WARNING
//    //
//    // WARNING: Anything changed here also needs to be updated on the native side (object.h see type CultureDataBaseObject)
//    // WARNING: The type loader will rearrange class member offsets so the mscorwks!CultureDataBaseObject
//    // WARNING: must be manually structured to match the true loaded class layout
//    //
//    [FriendAccessAllowed]
public class CultureData : DotNetObject
{
    private enum int undef/*todo: implement initializer*/ = int();
    private String sRealName;
    private String sWindowsName;
    private String sName;
    private String sParent;
    private String sLocalizedDisplayName;
    private String sEnglishDisplayName;
    private String sNativeDisplayName;
    private String sSpecificCulture;
    private String sISO639Language;
    private String sLocalizedLanguage;
    private String sEnglishLanguage;
    private String sNativeLanguage;
    private String sRegionName;
    private int iGeoId/*todo: implement initializer*/ = int();
    private String sLocalizedCountry;
    private String sEnglishCountry;
    private String sNativeCountry;
    private String sISO3166CountryName;
    private String sPositiveSign;
    private String sNegativeSign;
    private String[] saNativeDigits;
    private int iDigitSubstitution;
    private int iLeadingZeros;
    private int iDigits;
    private int iNegativeNumber;
    private int[] waGrouping;
    private String sDecimalSeparator;
    private String sThousandSeparator;
    private String sNaN;
    private String sPositiveInfinity;
    private String sNegativeInfinity;
    private int iNegativePercent/*todo: implement initializer*/ = int();
    private int iPositivePercent/*todo: implement initializer*/ = int();
    private String sPercent;
    private String sPerMille;
    private String sCurrency;
    private String sIntlMonetarySymbol;
    private String sEnglishCurrency;
    private String sNativeCurrency;
    private int iCurrencyDigits;
    private int iCurrency;
    private int iNegativeCurrency;
    private int[] waMonetaryGrouping;
    private String sMonetaryDecimal;
    private String sMonetaryThousand;
    private int iMeasure/*todo: implement initializer*/ = int();
    private String sListSeparator;
    private String sAM1159;
    private String sPM2359;
    private String sTimeSeparator;
    private /*todo: volatile*/String[] saLongTimes;
    private /*todo: volatile*/String[] saShortTimes;
    private /*todo: volatile*/String[] saDurationFormats;
    private int iFirstDayOfWeek/*todo: implement initializer*/ = int();
    private int iFirstWeekOfYear/*todo: implement initializer*/ = int();
    private /*todo: volatile*/int[] waCalendars;
    private CalendarData[] calendars;
    private int iReadingLayout/*todo: implement initializer*/ = int();
    private String sTextInfo;
    private String sCompareInfo;
    private String sScripts;
    private int iDefaultAnsiCodePage/*todo: implement initializer*/ = int();
    private int iDefaultOemCodePage/*todo: implement initializer*/ = int();
    private int iDefaultMacCodePage/*todo: implement initializer*/ = int();
    private int iDefaultEbcdicCodePage/*todo: implement initializer*/ = int();
    private int iLanguage;
    private String sAbbrevLang;
    private String sAbbrevCountry;
    private String sISO639Language2;
    private String sISO3166CountryName2;
    private int iInputLanguageHandle/*todo: implement initializer*/ = int();
    private String sConsoleFallbackName;
    private String sKeyboardsToInstall;
    private String fontSignature;
    private bool bUseOverrides;
    private bool bNeutral;
    private bool bWin32Installed;
    private bool bFramework;
    //TODO: generate property 'RegionNames'
    private static /*todo: volatile*/Dictionary2!(String,String) s_RegionNames;
    //TODO: generate property 'Invariant'
    private static /*todo: volatile*/CultureData s_Invariant;
    private static /*todo: volatile*/Dictionary2!(String,CultureData) s_cachedCultures;
    //TODO: generate method GetCultureData
    //TODO: generate method CreateCultureData
    //TODO: generate method InitCultureData
    private static /*todo: volatile*/Dictionary2!(String,CultureData) s_cachedRegions;
    //TODO: generate method GetCultureDataForRegion
    //TODO: generate method LCIDToLocaleName
    //TODO: generate method GetCultureData
    //TODO: generate method ClearCachedData
    //TODO: generate method GetCultures
    public static /*todo: volatile*/CultureInfo[] specificCultures;
    //TODO: generate property 'SpecificCultures'
    //TODO: generate property 'IsReplacementCulture'
    public static /*todo: volatile*/String[] s_replacementCultureNames;
    //TODO: generate method IsReplacementCultureName
    //TODO: generate property 'CultureName'
    //TODO: generate property 'UseUserOverride'
    //TODO: generate property 'SNAME'
    //TODO: generate property 'SPARENT'
    //TODO: generate property 'SLOCALIZEDDISPLAYNAME'
    //TODO: generate property 'SENGDISPLAYNAME'
    //TODO: generate property 'SNATIVEDISPLAYNAME'
    //TODO: generate property 'SSPECIFICCULTURE'
    //TODO: generate property 'SISO639LANGNAME'
    //TODO: generate property 'SISO639LANGNAME2'
    //TODO: generate property 'SABBREVLANGNAME'
    //TODO: generate property 'SLOCALIZEDLANGUAGE'
    //TODO: generate property 'SENGLISHLANGUAGE'
    //TODO: generate property 'SNATIVELANGUAGE'
    //TODO: generate property 'SREGIONNAME'
    //TODO: generate property 'ICOUNTRY'
    //TODO: generate property 'IGEOID'
    //TODO: generate property 'SLOCALIZEDCOUNTRY'
    //TODO: generate property 'SENGCOUNTRY'
    //TODO: generate property 'SNATIVECOUNTRY'
    //TODO: generate property 'SISO3166CTRYNAME'
    //TODO: generate property 'SISO3166CTRYNAME2'
    //TODO: generate property 'SABBREVCTRYNAME'
    //TODO: generate property 'IDEFAULTCOUNTRY'
    //TODO: generate property 'IINPUTLANGUAGEHANDLE'
    //TODO: generate property 'SCONSOLEFALLBACKNAME'
    //TODO: generate property 'ILEADINGZEROS'
    //TODO: generate property 'WAGROUPING'
    //TODO: generate property 'SNAN'
    //TODO: generate property 'SPOSINFINITY'
    //TODO: generate property 'SNEGINFINITY'
    //TODO: generate property 'INEGATIVEPERCENT'
    //TODO: generate property 'IPOSITIVEPERCENT'
    //TODO: generate property 'SPERCENT'
    //TODO: generate property 'SPERMILLE'
    //TODO: generate property 'SCURRENCY'
    //TODO: generate property 'SINTLSYMBOL'
    //TODO: generate property 'SENGLISHCURRENCY'
    //TODO: generate property 'SNATIVECURRENCY'
    //TODO: generate property 'WAMONGROUPING'
    //TODO: generate property 'IMEASURE'
    //TODO: generate property 'SLIST'
    //TODO: generate property 'IPAPERSIZE'
    //TODO: generate property 'SAM1159'
    //TODO: generate property 'SPM2359'
    //TODO: generate property 'LongTimes'
    //TODO: generate property 'ShortTimes'
    //TODO: generate method DeriveShortTimesFromLong
    //TODO: generate method StripSecondsFromPattern
    //TODO: generate method GetIndexOfNextTokenAfterSeconds
    //TODO: generate property 'SADURATION'
    //TODO: generate property 'IFIRSTDAYOFWEEK'
    //TODO: generate property 'IFIRSTWEEKOFYEAR'
    //TODO: generate method ShortDates
    //TODO: generate method LongDates
    //TODO: generate method YearMonths
    //TODO: generate method DayNames
    //TODO: generate method AbbreviatedDayNames
    //TODO: generate method SuperShortDayNames
    //TODO: generate method MonthNames
    //TODO: generate method GenitiveMonthNames
    //TODO: generate method AbbreviatedMonthNames
    //TODO: generate method AbbreviatedGenitiveMonthNames
    //TODO: generate method LeapYearMonthNames
    //TODO: generate method MonthDay
    //TODO: generate property 'CalendarIds'
    //TODO: generate method CalendarName
    //TODO: generate method GetCalendar
    //TODO: generate method CurrentEra
    //TODO: generate property 'IsRightToLeft'
    //TODO: generate property 'IREADINGLAYOUT'
    //TODO: generate property 'STEXTINFO'
    //TODO: generate property 'SCOMPAREINFO'
    //TODO: generate property 'IsSupplementalCustomCulture'
    //TODO: generate property 'SSCRIPTS'
    //TODO: generate property 'SOPENTYPELANGUAGETAG'
    //TODO: generate property 'FONTSIGNATURE'
    //TODO: generate property 'SKEYBOARDSTOINSTALL'
    //TODO: generate property 'IDEFAULTANSICODEPAGE'
    //TODO: generate property 'IDEFAULTOEMCODEPAGE'
    //TODO: generate property 'IDEFAULTMACCODEPAGE'
    //TODO: generate property 'IDEFAULTEBCDICCODEPAGE'
    //TODO: generate method LocaleNameToLCID
    //TODO: generate property 'ILANGUAGE'
    //TODO: generate property 'IsWin32Installed'
    //TODO: generate property 'IsFramework'
    //TODO: generate property 'IsNeutralCulture'
    //TODO: generate property 'IsInvariantCulture'
    //TODO: generate property 'DefaultCalendar'
    //TODO: generate method EraNames
    //TODO: generate method AbbrevEraNames
    //TODO: generate method AbbreviatedEnglishEraNames
    //TODO: generate property 'TimeSeparator'
    //TODO: generate method DateSeparator
    //TODO: generate method UnescapeNlsString
    //TODO: generate method ReescapeWin32String
    //TODO: generate method ReescapeWin32Strings
    //TODO: generate method GetTimeSeparator
    //TODO: generate method GetDateSeparator
    //TODO: generate method GetSeparator
    //TODO: generate method IndexOfTimePart
    //TODO: generate method DoGetLocaleInfo
    //TODO: generate method DoGetLocaleInfo
    //TODO: generate method DoGetLocaleInfoInt
    //TODO: generate method DoEnumTimeFormats
    //TODO: generate method DoEnumShortTimeFormats
    //TODO: generate method IsCustomCultureId
    //TODO: generate method GetNFIValues
    //TODO: generate method ConvertFirstDayOfWeekMonToSun
    //TODO: generate method AnsiToLower
    //TODO: generate method ConvertWin32GroupString
    private enum uint LOCALE_NOUSEROVERRIDE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_RETURN_NUMBER/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_RETURN_GENITIVE_NAMES/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SLOCALIZEDDISPLAYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SENGLISHDISPLAYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNATIVEDISPLAYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SLOCALIZEDLANGUAGENAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SENGLISHLANGUAGENAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNATIVELANGUAGENAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SLOCALIZEDCOUNTRYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SENGLISHCOUNTRYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNATIVECOUNTRYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVLANGNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ICOUNTRY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVCTRYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IGEOID/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDEFAULTLANGUAGE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDEFAULTCOUNTRY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDEFAULTCODEPAGE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDEFAULTANSICODEPAGE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDEFAULTMACCODEPAGE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SLIST/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IMEASURE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDECIMAL/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_STHOUSAND/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SGROUPING/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDIGITS/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ILZERO/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_INEGNUMBER/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNATIVEDIGITS/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SCURRENCY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SINTLSYMBOL/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONDECIMALSEP/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHOUSANDSEP/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONGROUPING/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ICURRDIGITS/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IINTLCURRDIGITS/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ICURRENCY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_INEGCURR/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDATE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_STIME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTDATE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SLONGDATE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_STIMEFORMAT/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDATE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ILDATE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ITIME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ITIMEMARKPOSN/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ICENTURY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ITLZERO/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDAYLZERO/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IMONLZERO/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_S1159/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_S2359/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_ICALENDARTYPE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IOPTIONALCALENDAR/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IFIRSTDAYOFWEEK/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IFIRSTWEEKOFYEAR/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDAYNAME1/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDAYNAME2/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDAYNAME3/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDAYNAME4/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDAYNAME5/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDAYNAME6/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDAYNAME7/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVDAYNAME1/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVDAYNAME2/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVDAYNAME3/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVDAYNAME4/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVDAYNAME5/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVDAYNAME6/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVDAYNAME7/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME1/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME2/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME3/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME4/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME5/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME6/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME7/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME8/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME9/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME10/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME11/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME12/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHNAME13/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME1/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME2/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME3/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME4/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME5/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME6/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME7/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME8/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME9/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME10/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME11/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME12/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SABBREVMONTHNAME13/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SPOSITIVESIGN/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNEGATIVESIGN/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IPOSSIGNPOSN/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_INEGSIGNPOSN/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IPOSSYMPRECEDES/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IPOSSEPBYSPACE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_INEGSYMPRECEDES/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_INEGSEPBYSPACE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_FONTSIGNATURE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SISO639LANGNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SISO3166CTRYNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDEFAULTEBCDICCODEPAGE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IPAPERSIZE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SENGCURRNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNATIVECURRNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SYEARMONTH/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSORTNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IDIGITSUBSTITUTION/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SDURATION/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SKEYBOARDSTOINSTALL/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTESTDAYNAME1/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTESTDAYNAME2/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTESTDAYNAME3/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTESTDAYNAME4/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTESTDAYNAME5/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTESTDAYNAME6/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTESTDAYNAME7/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SISO639LANGNAME2/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SISO3166CTRYNAME2/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNAN/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SPOSINFINITY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SNEGINFINITY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSCRIPTS/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SPARENT/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SCONSOLEFALLBACKNAME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IREADINGLAYOUT/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_INEUTRAL/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_INEGATIVEPERCENT/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_IPOSITIVEPERCENT/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SPERCENT/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SPERMILLE/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SMONTHDAY/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSHORTTIME/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SOPENTYPELANGUAGETAG/*todo: implement initializer*/ = uint();
    private enum uint LOCALE_SSORTLOCALE/*todo: implement initializer*/ = uint();
    public enum uint TIME_NOSECONDS/*todo: implement initializer*/ = uint();
    //TODO: generate method nativeInitCultureData
    //TODO: generate method nativeGetNumberFormatInfoValues
    //TODO: generate method nativeEnumTimeFormats
    //TODO: generate method nativeEnumCultureNames
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CultureInfo.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class CultureInfo : DotNetObject, ICloneable, IFormatProvider
{
    public bool m_isReadOnly;
    public CompareInfo compareInfo;
    public TextInfo textInfo;
    public NumberFormatInfo numInfo;
    public DateTimeFormatInfo dateTimeInfo;
    public Calendar calendar;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int m_dataItem;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int cultureID/*todo: implement initializer*/ = int();
    // Ignored: //
    // Ignored: // The CultureData instance that we are going to read data from.
    // Ignored: // For supported culture, this will be the CultureData instance that read data from mscorlib assembly.
    // Ignored: // For customized culture, this will be the CultureData instance that read data from user customized culture binary file.
    // Ignored: //
    // Ignored: [NonSerialized]
    public CultureData m_cultureData;
    // Ignored: [NonSerialized]
    public bool m_isInherited;
    public String m_name;
    // Ignored: // This will hold the non sorting name to be returned from CultureInfo.Name property.
    // Ignored: // This has a de-DE style name even for de-DE_phoneb type cultures
    // Ignored: [NonSerialized]
    private String m_nonSortName;
    // Ignored: // This will hold the sorting name to be returned from CultureInfo.SortName property.
    // Ignored: // This might be completely unrelated to the culture name if a custom culture.  Ie en-US for fj-FJ.
    // Ignored: // Otherwise its the sort name, ie: de-DE or de-DE_phoneb
    // Ignored: [NonSerialized]
    private String m_sortName;
    private static /*todo: volatile*/CultureInfo s_userDefaultCulture;
    private static /*todo: volatile*/CultureInfo s_InvariantCultureInfo;
    private static /*todo: volatile*/CultureInfo s_userDefaultUICulture;
    private static /*todo: volatile*/CultureInfo s_InstalledUICultureInfo;
    private static /*todo: volatile*/CultureInfo s_DefaultThreadCurrentUICulture;
    private static /*todo: volatile*/CultureInfo s_DefaultThreadCurrentCulture;
    private static /*todo: volatile*/Hashtable s_LcidCachedCultures;
    private static /*todo: volatile*/Hashtable s_NameCachedCultures;
    // Ignored: #if FEATURE_APPX
    // Ignored: // When running under AppX, we use this to get some information about the language list
    // Ignored: [SecurityCritical]
    private static /*todo: volatile*/WindowsRuntimeResourceManagerBase s_WindowsRuntimeResourceManager;
    // Ignored: [ThreadStatic]
    private static bool ts_IsDoingAppXCultureInfoLookup;
    // Ignored: #endif
    // Ignored: //The parent culture.
    // Ignored: [NonSerialized]
    private CultureInfo m_parent;
    public enum int LOCALE_NEUTRAL/*todo: implement initializer*/ = int();
    private enum int LOCALE_USER_DEFAULT/*todo: implement initializer*/ = int();
    private enum int LOCALE_SYSTEM_DEFAULT/*todo: implement initializer*/ = int();
    public enum int LOCALE_CUSTOM_DEFAULT/*todo: implement initializer*/ = int();
    public enum int LOCALE_CUSTOM_UNSPECIFIED/*todo: implement initializer*/ = int();
    public enum int LOCALE_INVARIANT/*todo: implement initializer*/ = int();
    private enum int LOCALE_TRADITIONAL_SPANISH/*todo: implement initializer*/ = int();
    private static immutable bool init/*todo: implement initializer*/ = bool();
    //TODO: generate method Init
    //TODO: generate method InitUserDefaultCulture
    //TODO: generate method InitUserDefaultUICulture
    //TODO: generate method GetCultureInfoForUserPreferredLanguageInAppX
    //TODO: generate method SetCultureInfoForUserPreferredLanguageInAppX
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeFromCultureId
    //TODO: generate method CheckDomainSafetyObject
    private bool m_useUserOverride;
    //TODO: generate method OnDeserialized
    private enum int LOCALE_SORTID_MASK/*todo: implement initializer*/ = int();
    //TODO: generate method IsAlternateSortLcid
    //TODO: generate method OnSerializing
    //TODO: generate method CanSendCrossDomain
    //TODO: generate constructor
    //TODO: generate method GetCultureByName
    //TODO: generate method CreateSpecificCulture
    //TODO: generate method VerifyCultureName
    //TODO: generate method VerifyCultureName
    //TODO: generate property 'CurrentCulture'
    //TODO: generate property 'UserDefaultCulture'
    //TODO: generate property 'UserDefaultUICulture'
    //TODO: generate property 'CurrentUICulture'
    //TODO: generate property 'InstalledUICulture'
    //TODO: generate property 'DefaultThreadCurrentCulture'
    //TODO: generate property 'DefaultThreadCurrentUICulture'
    //TODO: generate property 'InvariantCulture'
    //TODO: generate property 'Parent'
    //TODO: generate property 'LCID'
    //TODO: generate property 'KeyboardLayoutId'
    //TODO: generate method GetCultures
    //TODO: generate property 'Name'
    //TODO: generate property 'SortName'
    //TODO: generate property 'DisplayName'
    //TODO: generate property 'NativeName'
    //TODO: generate property 'EnglishName'
    //TODO: generate property 'TwoLetterISOLanguageName'
    //TODO: generate property 'ThreeLetterISOLanguageName'
    //TODO: generate property 'ThreeLetterWindowsLanguageName'
    //TODO: generate property 'CompareInfo'
    //TODO: generate property 'TextInfo'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method GetFormat
    //TODO: generate property 'IsNeutralCulture'
    //TODO: generate property 'NumberFormat'
    //TODO: generate property 'DateTimeFormat'
    //TODO: generate method ClearCachedData
    //TODO: generate method GetCalendarInstance
    //TODO: generate method GetCalendarInstanceRare
    //TODO: generate property 'Calendar'
    //TODO: generate property 'OptionalCalendars'
    //TODO: generate property 'UseUserOverride'
    //TODO: generate method Clone
    //TODO: generate method ReadOnly
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method VerifyWritable
    //TODO: generate property 'HasInvariantCultureName'
    //TODO: generate method GetCultureInfoHelper
    //TODO: generate method GetCultureInfo
    //TODO: generate method GetCultureInfo
    //TODO: generate method GetCultureInfo
    //TODO: generate method GetCultureInfoByIetfLanguageTag
    private static /*todo: volatile*/bool s_isTaiwanSku;
    private static /*todo: volatile*/bool s_haveIsTaiwanSku;
    //TODO: generate property 'IsTaiwanSku'
    //TODO: generate method nativeGetLocaleInfoEx
    //TODO: generate method nativeGetLocaleInfoExInt
    //TODO: generate method nativeSetThreadLocale
    //TODO: generate method GetDefaultLocaleName
    //TODO: generate method InternalGetDefaultLocaleName
    //TODO: generate method GetUserDefaultUILanguage
    //TODO: generate method InternalGetUserDefaultUILanguage
    //TODO: generate method GetSystemDefaultUILanguage
    //TODO: generate method InternalGetSystemDefaultUILanguage
    //TODO: generate method nativeGetResourceFallbackArray
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CultureNotFoundException.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class CultureNotFoundException : ArgumentException, ISerializable
{
    private String m_invalidCultureName;
    private Nullable1!(int) m_invalidCultureId;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate property 'InvalidCultureId'
    //TODO: generate property 'InvalidCultureName'
    //TODO: generate property 'DefaultMessage'
    //TODO: generate property 'FormatedInvalidCultureId'
    //TODO: generate property 'Message'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\CultureTypes.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum CultureTypes
{
    NeutralCultures = 0x0001,
    SpecificCultures = 0x0002,
    InstalledWin32Cultures = 0x0004,
    AllCultures = NeutralCultures | SpecificCultures | InstalledWin32Cultures,
    UserCustomCulture = 0x0008,
    ReplacementCultures = 0x0010,
    // Ignored: [Obsolete("This value has been deprecated.  Please use other values in CultureTypes.")]
    WindowsOnlyCultures = 0x0020,
    // Ignored: [Obsolete("This value has been deprecated.  Please use other values in CultureTypes.")]
    FrameworkCultures = 0x0040,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\DateTimeFormatInfo.cs'
//
// Ignored: //
// Ignored: // Flags used to indicate different styles of month names.
// Ignored: // This is an internal flag used by internalGetMonthName().
// Ignored: // Use flag here in case that we need to provide a combination of these styles
// Ignored: // (such as month name of a leap year in genitive form.  Not likely for now,
// Ignored: // but would like to keep the option open).
// Ignored: //
// Ignored: [Flags]
public enum MonthNameStyles
{
    Regular = 0x00000000,
    Genitive = 0x00000001,
    LeapYear = 0x00000002,
}
// Ignored: //
// Ignored: // Flags used to indicate special rule used in parsing/formatting
// Ignored: // for a specific DateTimeFormatInfo instance.
// Ignored: // This is an internal flag.
// Ignored: //
// Ignored: // This flag is different from MonthNameStyles because this flag
// Ignored: // can be expanded to accomodate parsing behaviors like CJK month names
// Ignored: // or alternative month names, etc.
// Ignored: [Flags]
public enum DateTimeFormatFlags
{
    None = 0x00000000,
    UseGenitiveMonth = 0x00000001,
    UseLeapYearMonth = 0x00000002,
    UseSpacesInMonthNames = 0x00000004,
    UseHebrewRule = 0x00000008,
    UseSpacesInDayNames = 0x00000010,
    UseDigitPrefixInTokens = 0x00000020,
    NotInitialized = -1,
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class DateTimeFormatInfo : DotNetObject, ICloneable, IFormatProvider
{
    private static /*todo: volatile*/DateTimeFormatInfo invariantInfo;
    // Ignored: // an index which points to a record in Culture Data Table.
    // Ignored: [NonSerialized]
    private CultureData m_cultureData;
    // Ignored: // The culture name used to create this DTFI.
    // Ignored: [OptionalField(VersionAdded = 2)]
    public String m_name/*todo: implement initializer*/ = null;
    // Ignored: // The language name of the culture used to create this DTFI.
    // Ignored: [NonSerialized]
    private String m_langName/*todo: implement initializer*/ = null;
    // Ignored: // CompareInfo usually used by the parser.
    // Ignored: [NonSerialized]
    private CompareInfo m_compareInfo/*todo: implement initializer*/ = null;
    // Ignored: // Culture matches current DTFI. mainly used for string comparisons during parsing.
    // Ignored: [NonSerialized]
    private CultureInfo m_cultureInfo/*todo: implement initializer*/ = null;
    public String amDesignator/*todo: implement initializer*/ = null;
    public String pmDesignator/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public String dateSeparator/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public String generalShortTimePattern/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public String generalLongTimePattern/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public String timeSeparator/*todo: implement initializer*/ = null;
    public String monthDayPattern/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 2)]                   // added in .NET Framework Release {2.0SP1/3.0SP1/3.5RTM}
    public String dateTimeOffsetPattern/*todo: implement initializer*/ = null;
    public enum String rfc1123Pattern/*todo: implement initializer*/ = null;
    public enum String sortableDateTimePattern/*todo: implement initializer*/ = null;
    public enum String universalSortableDateTimePattern/*todo: implement initializer*/ = null;
    public Calendar calendar/*todo: implement initializer*/ = null;
    public int firstDayOfWeek/*todo: implement initializer*/ = int();
    public int calendarWeekRule/*todo: implement initializer*/ = int();
    // Ignored: [OptionalField(VersionAdded = 1)]
    public String fullDateTimePattern/*todo: implement initializer*/ = null;
    public String[] abbreviatedDayNames/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 2)]
    public String[] m_superShortDayNames/*todo: implement initializer*/ = null;
    public String[] dayNames/*todo: implement initializer*/ = null;
    public String[] abbreviatedMonthNames/*todo: implement initializer*/ = null;
    public String[] monthNames/*todo: implement initializer*/ = null;
    // Ignored: // Cache the genitive month names that we retrieve from the data table.
    // Ignored: [OptionalField(VersionAdded = 2)]
    public String[] genitiveMonthNames/*todo: implement initializer*/ = null;
    // Ignored: // Cache the abbreviated genitive month names that we retrieve from the data table.
    // Ignored: [OptionalField(VersionAdded = 2)]
    public String[] m_genitiveAbbreviatedMonthNames/*todo: implement initializer*/ = null;
    // Ignored: // Cache the month names of a leap year that we retrieve from the data table.
    // Ignored: [OptionalField(VersionAdded = 2)]
    public String[] leapYearMonthNames/*todo: implement initializer*/ = null;
    public String longDatePattern/*todo: implement initializer*/ = null;
    public String shortDatePattern/*todo: implement initializer*/ = null;
    public String yearMonthPattern/*todo: implement initializer*/ = null;
    public String longTimePattern/*todo: implement initializer*/ = null;
    public String shortTimePattern/*todo: implement initializer*/ = null;
    // Ignored: // These are Whidbey-serialization compatable arrays (eg: default not included)
    // Ignored: // "all" is a bit of a misnomer since the "default" pattern stored above isn't
    // Ignored: // necessarily a member of the list
    // Ignored: [OptionalField(VersionAdded = 3)]
    private String[] allYearMonthPatterns/*todo: implement initializer*/ = null;
    public String[] allShortDatePatterns/*todo: implement initializer*/ = null;
    public String[] allLongDatePatterns/*todo: implement initializer*/ = null;
    public String[] allShortTimePatterns/*todo: implement initializer*/ = null;
    public String[] allLongTimePatterns/*todo: implement initializer*/ = null;
    public String[] m_eraNames/*todo: implement initializer*/ = null;
    public String[] m_abbrevEraNames/*todo: implement initializer*/ = null;
    public String[] m_abbrevEnglishEraNames/*todo: implement initializer*/ = null;
    public int[] optionalCalendars/*todo: implement initializer*/ = null;
    private enum int DEFAULT_ALL_DATETIMES_SIZE/*todo: implement initializer*/ = int();
    public bool m_isReadOnly/*todo: implement initializer*/ = bool();
    // Ignored: // This flag gives hints about if formatting/parsing should perform special code path for things like
    // Ignored: // genitive form or leap year month names.
    // Ignored: [OptionalField(VersionAdded = 2)]
    public DateTimeFormatFlags formatFlags/*todo: implement initializer*/ = (cast(DateTimeFormatFlags)0);
    public static bool preferExistingTokens/*todo: implement initializer*/ = bool();
    //TODO: generate method InitPreferExistingTokens
    //TODO: generate property 'CultureName'
    //TODO: generate property 'Culture'
    //TODO: generate property 'LanguageName'
    //TODO: generate method internalGetAbbreviatedDayOfWeekNames
    //TODO: generate method internalGetSuperShortDayNames
    //TODO: generate method internalGetDayOfWeekNames
    //TODO: generate method internalGetAbbreviatedMonthNames
    //TODO: generate method internalGetMonthNames
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeOverridableProperties
    // Ignored: #region Serialization
    // Ignored: // The following fields are defined to keep the serialization compatibility with .NET V1.0/V1.1.
    // Ignored: [OptionalField(VersionAdded = 1)]
    private int CultureID;
    // Ignored: [OptionalField(VersionAdded = 1)]
    private bool m_useUserOverride;
    // Ignored: [OptionalField(VersionAdded = 1)]
    private bool bUseCalendarInfo;
    // Ignored: [OptionalField(VersionAdded = 1)]
    private int nDataItem;
    // Ignored: [OptionalField(VersionAdded = 2)]
    public bool m_isDefaultCalendar;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private static /*todo: volatile*/Hashtable s_calendarNativeNames;
    // Ignored: // This was synthesized by Whidbey so we knew what words might appear in the middle of a date string
    // Ignored: // Now we always synthesize so its not helpful
    // Ignored: [OptionalField(VersionAdded = 1)]
    public String[] m_dateWords/*todo: implement initializer*/ = null;
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate property 'InvariantInfo'
    //TODO: generate property 'CurrentInfo'
    //TODO: generate method GetInstance
    //TODO: generate method GetFormat
    //TODO: generate method Clone
    //TODO: generate property 'AMDesignator'
    //TODO: generate property 'Calendar'
    //TODO: generate property 'OptionalCalendars'
    //TODO: generate method GetEra
    //TODO: generate property 'EraNames'
    //TODO: generate method GetEraName
    //TODO: generate property 'AbbreviatedEraNames'
    //TODO: generate method GetAbbreviatedEraName
    //TODO: generate property 'AbbreviatedEnglishEraNames'
    //TODO: generate property 'DateSeparator'
    //TODO: generate property 'FirstDayOfWeek'
    //TODO: generate property 'CalendarWeekRule'
    //TODO: generate property 'FullDateTimePattern'
    //TODO: generate property 'LongDatePattern'
    //TODO: generate property 'LongTimePattern'
    //TODO: generate property 'MonthDayPattern'
    //TODO: generate property 'PMDesignator'
    //TODO: generate property 'RFC1123Pattern'
    //TODO: generate property 'ShortDatePattern'
    //TODO: generate property 'ShortTimePattern'
    //TODO: generate property 'SortableDateTimePattern'
    //TODO: generate property 'GeneralShortTimePattern'
    //TODO: generate property 'GeneralLongTimePattern'
    //TODO: generate property 'DateTimeOffsetPattern'
    //TODO: generate property 'TimeSeparator'
    //TODO: generate property 'UniversalSortableDateTimePattern'
    //TODO: generate property 'YearMonthPattern'
    //TODO: generate method CheckNullValue
    //TODO: generate property 'AbbreviatedDayNames'
    //TODO: generate property 'ShortestDayNames'
    //TODO: generate property 'DayNames'
    //TODO: generate property 'AbbreviatedMonthNames'
    //TODO: generate property 'MonthNames'
    private static wchar[] MonthSpaces/*todo: implement initializer*/ = null;
    //TODO: generate property 'HasSpacesInMonthNames'
    //TODO: generate property 'HasSpacesInDayNames'
    //TODO: generate method internalGetMonthName
    //TODO: generate method internalGetGenitiveMonthNames
    //TODO: generate method internalGetLeapYearMonthNames
    //TODO: generate method GetAbbreviatedDayName
    //TODO: generate method GetShortestDayName
    //TODO: generate method GetCombinedPatterns
    //TODO: generate method GetAllDateTimePatterns
    //TODO: generate method GetAllDateTimePatterns
    //TODO: generate method GetDayName
    //TODO: generate method GetAbbreviatedMonthName
    //TODO: generate method GetMonthName
    //TODO: generate method GetMergedPatterns
    //TODO: generate property 'AllYearMonthPatterns'
    //TODO: generate property 'AllShortDatePatterns'
    //TODO: generate property 'AllShortTimePatterns'
    //TODO: generate property 'AllLongDatePatterns'
    //TODO: generate property 'AllLongTimePatterns'
    //TODO: generate property 'UnclonedYearMonthPatterns'
    //TODO: generate property 'UnclonedShortDatePatterns'
    //TODO: generate property 'UnclonedLongDatePatterns'
    //TODO: generate property 'UnclonedShortTimePatterns'
    //TODO: generate property 'UnclonedLongTimePatterns'
    //TODO: generate method ReadOnly
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'NativeCalendarName'
    //TODO: generate method SetAllDateTimePatterns
    //TODO: generate property 'AbbreviatedMonthGenitiveNames'
    //TODO: generate property 'MonthGenitiveNames'
    // Ignored: //
    // Ignored: // Positive TimeSpan Pattern
    // Ignored: //
    // Ignored: [NonSerialized]
    private String m_fullTimeSpanPositivePattern;
    //TODO: generate property 'FullTimeSpanPositivePattern'
    // Ignored: //
    // Ignored: // Negative TimeSpan Pattern
    // Ignored: //
    // Ignored: [NonSerialized]
    private String m_fullTimeSpanNegativePattern;
    //TODO: generate property 'FullTimeSpanNegativePattern'
    //TODO: generate property 'CompareInfo'
    public enum DateTimeStyles InvalidDateTimeStyles/*todo: implement initializer*/ = (cast(DateTimeStyles)0);
    //TODO: generate method ValidateStyles
    //TODO: generate property 'FormatFlags'
    //TODO: generate property 'HasForceTwoDigitYears'
    //TODO: generate property 'HasYearMonthAdjustment'
    //TODO: generate method YearMonthAdjustment
    // Ignored: //
    // Ignored: // DateTimeFormatInfo tokenizer.  This is used by DateTime.Parse() to break input string into tokens.
    // Ignored: //
    // Ignored: [NonSerialized]
    private TokenHashValue[] m_dtfiTokenHash;
    private enum int TOKEN_HASH_SIZE/*todo: implement initializer*/ = int();
    private enum int SECOND_PRIME/*todo: implement initializer*/ = int();
    private enum String dateSeparatorOrTimeZoneOffset/*todo: implement initializer*/ = null;
    private enum String invariantDateSeparator/*todo: implement initializer*/ = null;
    private enum String invariantTimeSeparator/*todo: implement initializer*/ = null;
    public enum String IgnorablePeriod/*todo: implement initializer*/ = null;
    public enum String IgnorableComma/*todo: implement initializer*/ = null;
    public enum String CJKYearSuff/*todo: implement initializer*/ = null;
    public enum String CJKMonthSuff/*todo: implement initializer*/ = null;
    public enum String CJKDaySuff/*todo: implement initializer*/ = null;
    public enum String KoreanYearSuff/*todo: implement initializer*/ = null;
    public enum String KoreanMonthSuff/*todo: implement initializer*/ = null;
    public enum String KoreanDaySuff/*todo: implement initializer*/ = null;
    public enum String KoreanHourSuff/*todo: implement initializer*/ = null;
    public enum String KoreanMinuteSuff/*todo: implement initializer*/ = null;
    public enum String KoreanSecondSuff/*todo: implement initializer*/ = null;
    public enum String CJKHourSuff/*todo: implement initializer*/ = null;
    public enum String ChineseHourSuff/*todo: implement initializer*/ = null;
    public enum String CJKMinuteSuff/*todo: implement initializer*/ = null;
    public enum String CJKSecondSuff/*todo: implement initializer*/ = null;
    public enum String LocalTimeMark/*todo: implement initializer*/ = null;
    public enum String KoreanLangName/*todo: implement initializer*/ = null;
    public enum String JapaneseLangName/*todo: implement initializer*/ = null;
    public enum String EnglishLangName/*todo: implement initializer*/ = null;
    private static /*todo: volatile*/DateTimeFormatInfo s_jajpDTFI;
    private static /*todo: volatile*/DateTimeFormatInfo s_zhtwDTFI;
    //TODO: generate method GetJapaneseCalendarDTFI
    //TODO: generate method GetTaiwanCalendarDTFI
    //TODO: generate method ClearTokenHashTable
    //TODO: generate method CreateTokenHashTable
    //TODO: generate method AddMonthNames
    //TODO: generate method TryParseHebrewNumber
    //TODO: generate method IsHebrewChar
    //TODO: generate method Tokenize
    //TODO: generate method InsertAtCurrentHashNode
    //TODO: generate method InsertHash
}
public class TokenHashValue : DotNetObject
{
    public String tokenString;
    public TokenType tokenType;
    public int tokenValue;
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\DateTimeFormatInfoScanner.cs'
//
public enum FORMATFLAGS
{
    None = 0x00000000,
    UseGenitiveMonth = 0x00000001,
    UseLeapYearMonth = 0x00000002,
    UseSpacesInMonthNames = 0x00000004,
    UseHebrewParsing = 0x00000008,
    UseSpacesInDayNames = 0x00000010,
    UseDigitPrefixInTokens = 0x00000020,
}
public enum CalendarId : ushort
{
    GREGORIAN = 1,
    GREGORIAN_US = 2,
    JAPAN = 3,
    TAIWAN = 4,
    KOREA = 5,
    HIJRI = 6,
    THAI = 7,
    HEBREW = 8,
    GREGORIAN_ME_FRENCH = 9,
    GREGORIAN_ARABIC = 10,
    GREGORIAN_XLIT_ENGLISH = 11,
    GREGORIAN_XLIT_FRENCH = 12,
    JULIAN = 13,
    JAPANESELUNISOLAR = 14,
    CHINESELUNISOLAR = 15,
    SAKA = 16,
    LUNAR_ETO_CHN = 17,
    LUNAR_ETO_KOR = 18,
    LUNAR_ETO_ROKUYOU = 19,
    KOREANLUNISOLAR = 20,
    TAIWANLUNISOLAR = 21,
    PERSIAN = 22,
    UMALQURA = 23,
    LAST_CALENDAR = 23,
}
public class DateTimeFormatInfoScanner : DotNetObject
{
    public enum wchar MonthPostfixChar/*todo: implement initializer*/ = wchar();
    public enum wchar IgnorableSymbolChar/*todo: implement initializer*/ = wchar();
    public enum String CJKYearSuff/*todo: implement initializer*/ = null;
    public enum String CJKMonthSuff/*todo: implement initializer*/ = null;
    public enum String CJKDaySuff/*todo: implement initializer*/ = null;
    public enum String KoreanYearSuff/*todo: implement initializer*/ = null;
    public enum String KoreanMonthSuff/*todo: implement initializer*/ = null;
    public enum String KoreanDaySuff/*todo: implement initializer*/ = null;
    public enum String KoreanHourSuff/*todo: implement initializer*/ = null;
    public enum String KoreanMinuteSuff/*todo: implement initializer*/ = null;
    public enum String KoreanSecondSuff/*todo: implement initializer*/ = null;
    public enum String CJKHourSuff/*todo: implement initializer*/ = null;
    public enum String ChineseHourSuff/*todo: implement initializer*/ = null;
    public enum String CJKMinuteSuff/*todo: implement initializer*/ = null;
    public enum String CJKSecondSuff/*todo: implement initializer*/ = null;
    public List1!(String) m_dateWords/*todo: implement initializer*/ = null;
    private static /*todo: volatile*/Dictionary2!(String,String) s_knownWords;
    //TODO: generate property 'KnownWords'
    //TODO: generate method SkipWhiteSpacesAndNonLetter
    //TODO: generate method AddDateWordOrPostfix
    //TODO: generate method AddDateWords
    //TODO: generate method ScanRepeatChar
    //TODO: generate method AddIgnorableSymbols
    private enum FoundDatePattern
    {
        None = 0x0000,
        FoundYearPatternFlag = 0x0001,
        FoundMonthPatternFlag = 0x0002,
        FoundDayPatternFlag = 0x0004,
        FoundYMDPatternFlag = 0x0007,
    }
    private FoundDatePattern m_ymdFlags/*todo: implement initializer*/ = (cast(FoundDatePattern)0);
    //TODO: generate method ScanDateWord
    //TODO: generate method GetDateWordsOfDTFI
    //TODO: generate method GetFormatFlagGenitiveMonth
    //TODO: generate method GetFormatFlagUseSpaceInMonthNames
    //TODO: generate method GetFormatFlagUseSpaceInDayNames
    //TODO: generate method GetFormatFlagUseHebrewCalendar
    //TODO: generate method EqualStringArrays
    //TODO: generate method ArrayElementsHaveSpace
    //TODO: generate method ArrayElementsBeginWithDigit
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\DateTimeStyles.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum DateTimeStyles
{
    None = 0x00000000,
    AllowLeadingWhite = 0x00000001,
    AllowTrailingWhite = 0x00000002,
    AllowInnerWhite = 0x00000004,
    AllowWhiteSpaces = AllowLeadingWhite | AllowInnerWhite | AllowTrailingWhite,
    NoCurrentDateDefault = 0x00000008,
    AdjustToUniversal = 0x00000010,
    AssumeLocal = 0x00000020,
    AssumeUniversal = 0x00000040,
    RoundtripKind = 0x00000080,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\DaylightTime.cs'
//
//// This class represents a starting/ending time for a period of daylight saving time.
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class DaylightTime : DotNetObject
{
    public DateTime m_start;
    public DateTime m_end;
    public TimeSpan m_delta;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Start'
    //TODO: generate property 'End'
    //TODO: generate property 'Delta'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\DigitShapes.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum DigitShapes : int
{
    Context = 0x0000,
    None = 0x0001,
    NativeNational = 0x0002,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\EastAsianLunisolarCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Notes about EastAsianLunisolarCalendar
//    //
//    ////////////////////////////////////////////////////////////////////////////
//
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public abstract class EastAsianLunisolarCalendar : Calendar
{
    public enum int LeapMonth/*todo: implement initializer*/ = int();
    public enum int Jan1Month/*todo: implement initializer*/ = int();
    public enum int Jan1Date/*todo: implement initializer*/ = int();
    public enum int nDaysPerMonth/*todo: implement initializer*/ = int();
    public static immutable int[] DaysToMonth365/*todo: implement initializer*/ = null;
    public static immutable int[] DaysToMonth366/*todo: implement initializer*/ = null;
    public enum int DatePartYear/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    public enum int DatePartMonth/*todo: implement initializer*/ = int();
    public enum int DatePartDay/*todo: implement initializer*/ = int();
    //TODO: generate property 'AlgorithmType'
    //TODO: generate method GetSexagenaryYear
    //TODO: generate method GetCelestialStem
    //TODO: generate method GetTerrestrialBranch
    //TODO: generate method GetYearInfo
    //TODO: generate method GetYear
    //TODO: generate method GetGregorianYear
    //TODO: generate property 'MinCalendarYear'
    //TODO: generate property 'MaxCalendarYear'
    //TODO: generate property 'CalEraInfo'
    //TODO: generate property 'MinDate'
    //TODO: generate property 'MaxDate'
    public enum int MaxCalendarMonth/*todo: implement initializer*/ = int();
    public enum int MaxCalendarDay/*todo: implement initializer*/ = int();
    //TODO: generate method MinEraCalendarYear
    //TODO: generate method MaxEraCalendarYear
    //TODO: generate constructor
    //TODO: generate method CheckTicksRange
    //TODO: generate method CheckEraRange
    //TODO: generate method CheckYearRange
    //TODO: generate method CheckYearMonthRange
    //TODO: generate method InternalGetDaysInMonth
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GregorianIsLeapYear
    //TODO: generate method ToDateTime
    //TODO: generate method GregorianToLunar
    //TODO: generate method LunarToGregorian
    //TODO: generate method LunarToTime
    //TODO: generate method TimeToLunar
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetMonth
    //TODO: generate method GetYear
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetMonthsInYear
    //TODO: generate method IsLeapDay
    //TODO: generate method IsLeapMonth
    //TODO: generate method GetLeapMonth
    //TODO: generate method InternalIsLeapYear
    //TODO: generate method IsLeapYear
    private enum int DEFAULT_GREGORIAN_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\EncodingDataItem.cs'
//
////
//    // Data item for EncodingTable.  Along with EncodingTable, they are used by 
//    // System.Text.Encoding.
//    // 
//    // This class stores a pointer to the internal data and the index into that data
//    // where our required information is found.  We load the code page, flags and uiFamilyCodePage
//    // immediately because they don't require creating an object.  Creating any of the string
//    // names is delayed until somebody actually asks for them and the names are then cached.
//    
//    [Serializable]
public class CodePageDataItem : DotNetObject
{
    public int m_dataIndex;
    public int m_uiFamilyCodePage;
    public String m_webName;
    public String m_headerName;
    public String m_bodyName;
    public uint m_flags;
    //TODO: generate constructor
    //TODO: generate method CreateString
    //TODO: generate property 'WebName'
    //TODO: generate property 'UIFamilyCodePage'
    //TODO: generate property 'HeaderName'
    //TODO: generate property 'BodyName'
    //TODO: generate property 'Flags'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\EncodingTable.cs'
//
public class EncodingTable : DotNetObject
{
    private this() {} // prevent instantiation
    private static int lastEncodingItem/*todo: implement initializer*/ = int();
    private static /*todo: volatile*/int lastCodePageItem;
    // Ignored: //
    // Ignored: // This points to a native data table which maps an encoding name to the correct code page.
    // Ignored: //
    // Ignored: [SecurityCritical]
    public static InternalEncodingDataItem* encodingDataPtr/*todo: implement initializer*/ = null;
    // Ignored: //
    // Ignored: // This points to a native data table which stores the properties for the code page, and
    // Ignored: // the table is indexed by code page.
    // Ignored: //
    // Ignored: [SecurityCritical]
    public static InternalCodePageDataItem* codePageDataPtr/*todo: implement initializer*/ = null;
    private static Hashtable hashByName/*todo: implement initializer*/ = null;
    private static Hashtable hashByCodePage/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method internalGetCodePageFromName
    //TODO: generate method GetEncodings
    //TODO: generate method GetCodePageFromName
    //TODO: generate method GetCodePageDataItem
    //TODO: generate method GetEncodingData
    //TODO: generate method GetNumEncodingItems
    //TODO: generate method GetCodePageData
    //TODO: generate method nativeCreateOpenFileMapping
}
///*=================================InternalEncodingDataItem==========================
//    **Action: This is used to map a encoding name to a correct code page number. By doing this,
//    ** we can get the properties of this encoding via the InternalCodePageDataItem.
//    **
//    ** We use this structure to access native data exposed by the native side.
//    ============================================================================*/
//    
//    [System.Runtime.InteropServices.StructLayout(LayoutKind.Sequential)]
public struct InternalEncodingDataItem
{
    // Ignored: [SecurityCritical]
    public byte* webName;
    public ushort codePage;
}
///*=================================InternalCodePageDataItem==========================
//    **Action: This is used to access the properties related to a code page.
//    ** We use this structure to access native data exposed by the native side.
//    ============================================================================*/
//
//    [System.Runtime.InteropServices.StructLayout(LayoutKind.Sequential)]
public struct InternalCodePageDataItem
{
    public ushort codePage;
    public ushort uiFamilyCodePage;
    public uint flags;
    // Ignored: [SecurityCritical]
    public byte* Names;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\GlobalizationAssembly.cs'
//
public final class GlobalizationAssembly : DotNetObject
{
    //TODO: generate method GetGlobalizationResourceBytePtr
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\GregorianCalendar.cs'
//
//// This calendar recognizes two era values:
//    // 0 CurrentEra (AD)
//    // 1 BeforeCurrentEra (BC)
//
//    [System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class GregorianCalendar : Calendar
{
    public enum int ADEra/*todo: implement initializer*/ = int();
    public enum int DatePartYear/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    public enum int DatePartMonth/*todo: implement initializer*/ = int();
    public enum int DatePartDay/*todo: implement initializer*/ = int();
    public enum int MaxYear/*todo: implement initializer*/ = int();
    public GregorianCalendarTypes m_type;
    public static immutable int[] DaysToMonth365/*todo: implement initializer*/ = null;
    public static immutable int[] DaysToMonth366/*todo: implement initializer*/ = null;
    private static /*todo: volatile*/Calendar s_defaultInstance;
    //TODO: generate method OnDeserialized
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate method GetDefaultInstance
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CalendarType'
    //TODO: generate property 'ID'
    //TODO: generate method GetDatePart
    //TODO: generate method GetAbsoluteDate
    //TODO: generate method DateToTicks
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate property 'Eras'
    //TODO: generate method GetMonth
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method ToDateTime
    //TODO: generate method TryToDateTime
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\GregorianCalendarHelper.cs'
//
//// Gregorian Calendars use Era Info
//    // Note: We shouldn't have to serialize this since the info doesn't change, but we have been. 
//    // (We really only need the calendar #, and maybe culture)
//    [Serializable]
public class EraInfo : DotNetObject
{
    public int era;
    public long ticks;
    public int yearOffset;
    public int minEraYear;
    public int maxEraYear;
    // Ignored: [OptionalField(VersionAdded = 4)]
    public String eraName;
    // Ignored: [OptionalField(VersionAdded = 4)]
    public String abbrevEraName;
    // Ignored: [OptionalField(VersionAdded = 4)]
    public String englishEraName;
    //TODO: generate constructor
    //TODO: generate constructor
}
//// This calendar recognizes two era values:
//    // 0 CurrentEra (AD) 
//    // 1 BeforeCurrentEra (BC) 
//    [Serializable]
public class GregorianCalendarHelper : DotNetObject
{
    public enum long TicksPerMillisecond/*todo: implement initializer*/ = long();
    public enum long TicksPerSecond/*todo: implement initializer*/ = long();
    public enum long TicksPerMinute/*todo: implement initializer*/ = long();
    public enum long TicksPerHour/*todo: implement initializer*/ = long();
    public enum long TicksPerDay/*todo: implement initializer*/ = long();
    public enum int MillisPerSecond/*todo: implement initializer*/ = int();
    public enum int MillisPerMinute/*todo: implement initializer*/ = int();
    public enum int MillisPerHour/*todo: implement initializer*/ = int();
    public enum int MillisPerDay/*todo: implement initializer*/ = int();
    public enum int DaysPerYear/*todo: implement initializer*/ = int();
    public enum int DaysPer4Years/*todo: implement initializer*/ = int();
    public enum int DaysPer100Years/*todo: implement initializer*/ = int();
    public enum int DaysPer400Years/*todo: implement initializer*/ = int();
    public enum int DaysTo10000/*todo: implement initializer*/ = int();
    public enum long MaxMillis/*todo: implement initializer*/ = long();
    public enum int DatePartYear/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    public enum int DatePartMonth/*todo: implement initializer*/ = int();
    public enum int DatePartDay/*todo: implement initializer*/ = int();
    //TODO: generate property 'MaxYear'
    public static immutable int[] DaysToMonth365/*todo: implement initializer*/ = null;
    public static immutable int[] DaysToMonth366/*todo: implement initializer*/ = null;
    // Ignored: // Strictly these don't need serialized since they can be recreated from the calendar id
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int m_maxYear/*todo: implement initializer*/ = int();
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int m_minYear;
    public Calendar m_Cal;
    // Ignored: // Era information doesn't need serialized, its constant for the same calendars (ie: we can recreate it from the calendar id)
    // Ignored: [OptionalField(VersionAdded = 1)]
    public EraInfo[] m_EraInfo;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int[] m_eras/*todo: implement initializer*/ = null;
    // Ignored: // m_minDate is existing here just to keep the serialization compatibility.
    // Ignored: // it has nothing to do with the code anymore.
    // Ignored: [OptionalField(VersionAdded = 1)]
    public DateTime m_minDate;
    //TODO: generate constructor
    //TODO: generate method GetGregorianYear
    //TODO: generate method IsValidYear
    //TODO: generate method GetDatePart
    //TODO: generate method GetAbsoluteDate
    //TODO: generate method DateToTicks
    //TODO: generate method TimeToTicks
    //TODO: generate method CheckTicksRange
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate property 'Eras'
    //TODO: generate method GetMonth
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method ToDateTime
    //TODO: generate method GetWeekOfYear
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\GregorianCalendarTypes.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum GregorianCalendarTypes
{
    Localized = /*MemberExpression:Type*/Calendar.CAL_GREGORIAN,
    USEnglish = /*MemberExpression:Type*/Calendar.CAL_GREGORIAN_US,
    MiddleEastFrench = /*MemberExpression:Type*/Calendar.CAL_GREGORIAN_ME_FRENCH,
    Arabic = /*MemberExpression:Type*/Calendar.CAL_GREGORIAN_ARABIC,
    TransliteratedEnglish = /*MemberExpression:Type*/Calendar.CAL_GREGORIAN_XLIT_ENGLISH,
    TransliteratedFrench = /*MemberExpression:Type*/Calendar.CAL_GREGORIAN_XLIT_FRENCH,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\HebrewCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Rules for the Hebrew calendar:
//    //    - The Hebrew calendar is both a Lunar (months) and Solar (years)
//    //        calendar, but allows for a week of seven days.
//    //    - Days begin at sunset.
//    //    - Leap Years occur in the 3, 6, 8, 11, 14, 17, & 19th years of a
//    //        19-year cycle.  Year = leap iff ((7y+1) mod 19 < 7).
//    //    - There are 12 months in a common year and 13 months in a leap year.
//    //    - In a common year, the 6th month, Adar, has 29 days.  In a leap
//    //        year, the 6th month, Adar I, has 30 days and the leap month,
//    //        Adar II, has 29 days.
//    //    - Common years have 353-355 days.  Leap years have 383-385 days.
//    //    - The Hebrew new year (Rosh HaShanah) begins on the 1st of Tishri,
//    //        the 7th month in the list below.
//    //        - The new year may not begin on Sunday, Wednesday, or Friday.
//    //        - If the new year would fall on a Tuesday and the conjunction of
//    //            the following year were at midday or later, the new year is
//    //            delayed until Thursday.
//    //        - If the new year would fall on a Monday after a leap year, the
//    //            new year is delayed until Tuesday.
//    //    - The length of the 8th and 9th months vary from year to year,
//    //        depending on the overall length of the year.
//    //        - The length of a year is determined by the dates of the new
//    //            years (Tishri 1) preceding and following the year in question.
//    //        - The 2th month is long (30 days) if the year has 355 or 385 days.
//    //        - The 3th month is short (29 days) if the year has 353 or 383 days.
//    //    - The Hebrew months are:
//    //        1.  Tishri        (30 days)
//    //        2.  Heshvan       (29 or 30 days)
//    //        3.  Kislev        (29 or 30 days)
//    //        4.  Teveth        (29 days)
//    //        5.  Shevat        (30 days)
//    //        6.  Adar I        (30 days)
//    //        7.  Adar {II}     (29 days, this only exists if that year is a leap year)
//    //        8.  Nisan         (30 days)
//    //        9.  Iyyar         (29 days)
//    //        10. Sivan         (30 days)
//    //        11. Tammuz        (29 days)
//    //        12. Av            (30 days)
//    //        13. Elul          (29 days)
//    //
//    ////////////////////////////////////////////////////////////////////////////
//     /*
//     **  Calendar support range:
//     **      Calendar    Minimum     Maximum
//     **      ==========  ==========  ==========
//     **      Gregorian   1583/01/01  2239/09/29
//     **      Hebrew      5343/04/07  5999/13/29
//     */
//
//// Includes CHebrew implemetation;i.e All the code necessary for converting
//// Gregorian to Hebrew Lunar from 1583 to 2239.
//
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class HebrewCalendar : Calendar
{
    public static immutable int HebrewEra/*todo: implement initializer*/ = int();
    public enum int DatePartYear/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    public enum int DatePartMonth/*todo: implement initializer*/ = int();
    public enum int DatePartDay/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfWeek/*todo: implement initializer*/ = int();
    private enum int HebrewYearOf1AD/*todo: implement initializer*/ = int();
    private enum int FirstGregorianTableYear/*todo: implement initializer*/ = int();
    private enum int LastGregorianTableYear/*todo: implement initializer*/ = int();
    private enum int TABLESIZE/*todo: implement initializer*/ = int();
    private enum int MinHebrewYear/*todo: implement initializer*/ = int();
    private enum int MaxHebrewYear/*todo: implement initializer*/ = int();
    private static immutable int[] HebrewTable/*todo: implement initializer*/ = null;
    private static immutable int[] LunarMonthLen/*todo: implement initializer*/ = null;
    public static immutable DateTime calendarMinValue/*todo: implement initializer*/ = DateTime();
    public static immutable DateTime calendarMaxValue/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate method CheckHebrewYearValue
    //TODO: generate method CheckHebrewMonthValue
    //TODO: generate method CheckHebrewDayValue
    //TODO: generate method CheckEraRange
    //TODO: generate method CheckTicksRange
    //TODO: generate method GetResult
    //TODO: generate method GetLunarMonthDay
    //TODO: generate method GetDatePart
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetHebrewYearType
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate property 'Eras'
    //TODO: generate method GetMonth
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method GetDayDifference
    //TODO: generate method HebrewToGregorian
    //TODO: generate method ToDateTime
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
    public static class __DateBuffer : DotNetObject
    {
        public int year;
        public int month;
        public int day;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\HebrewNumber.cs'
//
public struct HebrewNumberParsingContext
{
    public HebrewNumber.HS state;
    public int result;
    //TODO: generate constructor
}
public enum HebrewNumberParsingState
{
    InvalidHebrewNumber,
    NotHebrewDigit,
    FoundEndOfHebrewNumber,
    ContinueParsing,
}
public class HebrewNumber : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method ToString
    private enum HebrewToken
    {
        Invalid = -1,
        Digit400 = 0,
        Digit200_300 = 1,
        Digit100 = 2,
        Digit10 = 3,
        Digit1 = 4,
        Digit6_7 = 5,
        Digit7 = 6,
        Digit9 = 7,
        SingleQuote = 8,
        DoubleQuote = 9,
    }
    private static class HebrewValue : DotNetObject
    {
        public HebrewToken token;
        public int value;
        //TODO: generate constructor
    }
    private static HebrewValue[] HebrewValues/*todo: implement initializer*/ = null;
    private enum int minHebrewNumberCh/*todo: implement initializer*/ = int();
    private static wchar maxHebrewNumberCh/*todo: implement initializer*/ = wchar();
    public enum HS
    {
        _err = -1,
        Start = 0,
        S400 = 1,
        S400_400 = 2,
        S400_X00 = 3,
        S400_X0 = 4,
        X00_DQ = 5,
        S400_X00_X0 = 6,
        X0_DQ = 7,
        X = 8,
        X0 = 9,
        X00 = 10,
        S400_DQ = 11,
        S400_400_DQ = 12,
        S400_400_100 = 13,
        S9 = 14,
        X00_S9 = 15,
        S9_DQ = 16,
        END = 100,
    }
    private static immutable HS[][] NumberPasingState/*todo: implement initializer*/ = null;
    //TODO: generate method ParseByChar
    //TODO: generate method IsDigit
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\HijriCalendar.cs'
//
//#if !FEATURE_WIN32_REGISTRY
//    using System.Text;
//    using Microsoft.Win32;
//#endif // FEATURE_WIN32_REGISTRY
//
//    ////////////////////////////////////////////////////////////////////////////
//    //
//    //  Rules for the Hijri calendar:
//    //    - The Hijri calendar is a strictly Lunar calendar.
//    //    - Days begin at sunset.
//    //    - Islamic Year 1 (Muharram 1, 1 A.H.) is equivalent to absolute date
//    //        227015 (Friday, July 16, 622 C.E. - Julian).
//    //    - Leap Years occur in the 2, 5, 7, 10, 13, 16, 18, 21, 24, 26, & 29th
//    //        years of a 30-year cycle.  Year = leap iff ((11y+14) mod 30 < 11).
//    //    - There are 12 months which contain alternately 30 and 29 days.
//    //    - The 12th month, Dhu al-Hijjah, contains 30 days instead of 29 days
//    //        in a leap year.
//    //    - Common years have 354 days.  Leap years have 355 days.
//    //    - There are 10,631 days in a 30-year cycle.
//    //    - The Islamic months are:
//    //        1.  Muharram   (30 days)     7.  Rajab          (30 days)
//    //        2.  Safar      (29 days)     8.  Sha'ban        (29 days)
//    //        3.  Rabi I     (30 days)     9.  Ramadan        (30 days)
//    //        4.  Rabi II    (29 days)     10. Shawwal        (29 days)
//    //        5.  Jumada I   (30 days)     11. Dhu al-Qada    (30 days)
//    //        6.  Jumada II  (29 days)     12. Dhu al-Hijjah  (29 days) {30}
//    //
//    //  NOTENOTE
//    //      The calculation of the HijriCalendar is based on the absolute date.  And the
//    //      absolute date means the number of days from January 1st, 1 A.D.
//    //      Therefore, we do not support the days before the January 1st, 1 A.D.
//    //
//    ////////////////////////////////////////////////////////////////////////////
//     /*
//     **  Calendar support range:
//     **      Calendar    Minimum     Maximum
//     **      ==========  ==========  ==========
//     **      Gregorian   0622/07/18   9999/12/31
//     **      Hijri       0001/01/01   9666/04/03
//     */
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class HijriCalendar : Calendar
{
    public static immutable int HijriEra/*todo: implement initializer*/ = int();
    public enum int DatePartYear/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    public enum int DatePartMonth/*todo: implement initializer*/ = int();
    public enum int DatePartDay/*todo: implement initializer*/ = int();
    public enum int MinAdvancedHijri/*todo: implement initializer*/ = int();
    public enum int MaxAdvancedHijri/*todo: implement initializer*/ = int();
    public static immutable int[] HijriMonthDays/*todo: implement initializer*/ = null;
    private enum String InternationalRegKey/*todo: implement initializer*/ = null;
    private enum String HijriAdvanceRegKeyEntry/*todo: implement initializer*/ = null;
    private int m_HijriAdvance/*todo: implement initializer*/ = int();
    public enum int MaxCalendarYear/*todo: implement initializer*/ = int();
    public enum int MaxCalendarMonth/*todo: implement initializer*/ = int();
    public enum int MaxCalendarDay/*todo: implement initializer*/ = int();
    public static immutable DateTime calendarMinValue/*todo: implement initializer*/ = DateTime();
    public static immutable DateTime calendarMaxValue/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate property 'DaysInYearBeforeMinSupportedYear'
    //TODO: generate method GetAbsoluteDateHijri
    //TODO: generate method DaysUpToHijriYear
    //TODO: generate property 'HijriAdjustment'
    //TODO: generate method GetAdvanceHijriDate
    //TODO: generate method CheckTicksRange
    //TODO: generate method CheckEraRange
    //TODO: generate method CheckYearRange
    //TODO: generate method CheckYearMonthRange
    //TODO: generate method GetDatePart
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate property 'Eras'
    //TODO: generate method GetMonth
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method ToDateTime
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\IdnMapping.cs'
//
public final class IdnMapping : DotNetObject
{
    private enum int M_labelLimit/*todo: implement initializer*/ = int();
    private enum int M_defaultNameLimit/*todo: implement initializer*/ = int();
    private enum String M_strAcePrefix/*todo: implement initializer*/ = null;
    private static wchar[] M_Dots/*todo: implement initializer*/ = null;
    private bool m_bAllowUnassigned;
    private bool m_bUseStd3AsciiRules;
    //TODO: generate constructor
    //TODO: generate property 'AllowUnassigned'
    //TODO: generate property 'UseStd3AsciiRules'
    //TODO: generate method GetAscii
    //TODO: generate method GetAscii
    //TODO: generate method GetAscii
    //TODO: generate method GetAsciiUsingOS
    //TODO: generate method GetUnicode
    //TODO: generate method GetUnicode
    //TODO: generate method GetUnicode
    //TODO: generate method GetUnicodeUsingOS
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method IsSupplementary
    //TODO: generate method IsDot
    //TODO: generate method ValidateStd3AndAscii
    //TODO: generate method ValidateStd3
    //TODO: generate method HasUpperCaseFlag
    private enum int punycodeBase/*todo: implement initializer*/ = int();
    private enum int tmin/*todo: implement initializer*/ = int();
    private enum int tmax/*todo: implement initializer*/ = int();
    private enum int skew/*todo: implement initializer*/ = int();
    private enum int damp/*todo: implement initializer*/ = int();
    private enum int initial_bias/*todo: implement initializer*/ = int();
    private enum int initial_n/*todo: implement initializer*/ = int();
    private enum wchar delimiter/*todo: implement initializer*/ = wchar();
    //TODO: generate method basic
    //TODO: generate method decode_digit
    //TODO: generate method encode_digit
    //TODO: generate method encode_basic
    private enum int maxint/*todo: implement initializer*/ = int();
    //TODO: generate method adapt
    //TODO: generate method punycode_encode
    //TODO: generate method punycode_decode
    private enum int IDN_ALLOW_UNASSIGNED/*todo: implement initializer*/ = int();
    private enum int IDN_USE_STD3_ASCII_RULES/*todo: implement initializer*/ = int();
    private enum int ERROR_INVALID_NAME/*todo: implement initializer*/ = int();
    //TODO: generate method IdnToAscii
    //TODO: generate method IdnToUnicode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\JapaneseCalendar.cs'
//
///*=================================JapaneseCalendar==========================
//    **
//    ** JapaneseCalendar is based on Gregorian calendar.  The month and day values are the same as
//    ** Gregorian calendar.  However, the year value is an offset to the Gregorian
//    ** year based on the era.
//    **
//    ** This system is adopted by Emperor Meiji in 1868. The year value is counted based on the reign of an emperor,
//    ** and the era begins on the day an emperor ascends the throne and continues until his death.
//    ** The era changes at 12:00AM.
//    **
//    ** For example, the current era is Heisei.  It started on 1989/1/8 A.D.  Therefore, Gregorian year 1989 is also Heisei 1st.
//    ** 1989/1/8 A.D. is also Heisei 1st 1/8.
//    **
//    ** Any date in the year during which era is changed can be reckoned in either era.  For example,
//    ** 1989/1/1 can be 1/1 Heisei 1st year or 1/1 Showa 64th year.
//    **
//    ** Note:
//    **  The DateTime can be represented by the JapaneseCalendar are limited to two factors:
//    **      1. The min value and max value of DateTime class.
//    **      2. The available era information.
//    **
//    **  Calendar support range:
//    **      Calendar    Minimum     Maximum
//    **      ==========  ==========  ==========
//    **      Gregorian   1868/09/08  9999/12/31
//    **      Japanese    Meiji 01/01 Heisei 8011/12/31
//    ============================================================================*/
//
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class JapaneseCalendar : Calendar
{
    public static immutable DateTime calendarMinValue/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    public static /*todo: volatile*/EraInfo[] japaneseEraInfo;
    //TODO: generate method GetEraInfo
    private enum String c_japaneseErasHive/*todo: implement initializer*/ = null;
    private enum String c_japaneseErasHivePermissionList/*todo: implement initializer*/ = null;
    //TODO: generate method GetErasFromRegistry
    //TODO: generate method CompareEraRanges
    //TODO: generate method GetEraFromValue
    public static /*todo: volatile*/Calendar s_defaultInstance;
    public GregorianCalendarHelper helper;
    //TODO: generate method GetDefaultInstance
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetWeekOfYear
    //TODO: generate method GetEra
    //TODO: generate method GetMonth
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method IsLeapYear
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method ToDateTime
    //TODO: generate method ToFourDigitYear
    //TODO: generate property 'Eras'
    //TODO: generate method EraNames
    //TODO: generate method AbbrevEraNames
    //TODO: generate method EnglishEraNames
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate method IsValidYear
    //TODO: generate property 'TwoDigitYearMax'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\JapaneseLunisolarCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Notes about JapaneseLunisolarCalendar
//    //
//    ////////////////////////////////////////////////////////////////////////////
//     /*
//     **  Calendar support range:
//     **      Calendar               Minimum             Maximum
//     **      ==========             ==========          ==========
//     **      Gregorian              1960/01/28          2050/01/22
//     **      JapaneseLunisolar      1960/01/01          2049/12/29
//     */
//
//    [Serializable]
public class JapaneseLunisolarCalendar : EastAsianLunisolarCalendar
{
    public enum int JapaneseEra/*todo: implement initializer*/ = int();
    public GregorianCalendarHelper helper;
    public enum int MIN_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public static DateTime minDate/*todo: implement initializer*/ = DateTime();
    public static DateTime maxDate/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'DaysInYearBeforeMinSupportedYear'
    private static immutable int[] yinfo/*todo: implement initializer*/ = null;
    //TODO: generate property 'MinCalendarYear'
    //TODO: generate property 'MaxCalendarYear'
    //TODO: generate property 'MinDate'
    //TODO: generate property 'MaxDate'
    //TODO: generate property 'CalEraInfo'
    //TODO: generate method GetYearInfo
    //TODO: generate method GetYear
    //TODO: generate method GetGregorianYear
    //TODO: generate method TrimEras
    //TODO: generate constructor
    //TODO: generate method GetEra
    //TODO: generate property 'BaseCalendarID'
    //TODO: generate property 'ID'
    //TODO: generate property 'Eras'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\JulianCalendar.cs'
//
////
//    // This class implements the Julian calendar. In 48 B.C. Julius Caesar ordered a calendar reform, and this calendar
//    // is called Julian calendar. It consisted of a solar year of twelve months and of 365 days with an extra day
//    // every fourth year.
//    //*
//    //*  Calendar support range:
//    //*      Calendar    Minimum     Maximum
//    //*      ==========  ==========  ==========
//    //*      Gregorian   0001/01/01   9999/12/31
//    //*      Julia       0001/01/03   9999/10/19
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class JulianCalendar : Calendar
{
    public static immutable int JulianEra/*todo: implement initializer*/ = int();
    private enum int DatePartYear/*todo: implement initializer*/ = int();
    private enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    private enum int DatePartMonth/*todo: implement initializer*/ = int();
    private enum int DatePartDay/*todo: implement initializer*/ = int();
    private enum int JulianDaysPerYear/*todo: implement initializer*/ = int();
    private enum int JulianDaysPer4Years/*todo: implement initializer*/ = int();
    private static immutable int[] DaysToMonth365/*todo: implement initializer*/ = null;
    private static immutable int[] DaysToMonth366/*todo: implement initializer*/ = null;
    public int MaxYear/*todo: implement initializer*/ = int();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate method CheckEraRange
    //TODO: generate method CheckYearEraRange
    //TODO: generate method CheckMonthRange
    //TODO: generate method CheckDayRange
    //TODO: generate method GetDatePart
    //TODO: generate method DateToTicks
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate method GetMonth
    //TODO: generate property 'Eras'
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method ToDateTime
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\KoreanCalendar.cs'
//
///*=================================KoreanCalendar==========================
//    **
//    ** Korean calendar is based on the Gregorian calendar.  And the year is an offset to Gregorian calendar.
//    ** That is,
//    **      Korean year = Gregorian year + 2333.  So 2000/01/01 A.D. is Korean 4333/01/01
//    **
//    ** 0001/1/1 A.D. is Korean year 2334.
//    **
//    **  Calendar support range:
//    **      Calendar    Minimum     Maximum
//    **      ==========  ==========  ==========
//    **      Gregorian   0001/01/01   9999/12/31
//    **      Korean      2334/01/01  12332/12/31
//    ============================================================================*/
//
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class KoreanCalendar : Calendar
{
    public enum int KoreanEra/*todo: implement initializer*/ = int();
    public static EraInfo[] koreanEraInfo/*todo: implement initializer*/ = null;
    public GregorianCalendarHelper helper;
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetWeekOfYear
    //TODO: generate method GetEra
    //TODO: generate method GetMonth
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method IsLeapYear
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method ToDateTime
    //TODO: generate property 'Eras'
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\KoreanLunisolarCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Notes about KoreanLunisolarCalendar
//    //
//    ////////////////////////////////////////////////////////////////////////////
//     /*
//     **  Calendar support range:
//     **      Calendar               Minimum             Maximum
//     **      ==========     ==========  ==========
//     **      Gregorian              918/02/14          2051/02/10
//     **      KoreanLunisolar    918/01/01          2050/13/29
//     */
//
//    [Serializable]
public class KoreanLunisolarCalendar : EastAsianLunisolarCalendar
{
    public enum int GregorianEra/*todo: implement initializer*/ = int();
    public enum int MIN_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public static DateTime minDate/*todo: implement initializer*/ = DateTime();
    public static DateTime maxDate/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'DaysInYearBeforeMinSupportedYear'
    private static immutable int[] yinfo/*todo: implement initializer*/ = null;
    //TODO: generate property 'MinCalendarYear'
    //TODO: generate property 'MaxCalendarYear'
    //TODO: generate property 'MinDate'
    //TODO: generate property 'MaxDate'
    //TODO: generate property 'CalEraInfo'
    //TODO: generate method GetYearInfo
    //TODO: generate method GetYear
    //TODO: generate method GetGregorianYear
    //TODO: generate constructor
    //TODO: generate method GetEra
    //TODO: generate property 'BaseCalendarID'
    //TODO: generate property 'ID'
    //TODO: generate property 'Eras'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\NumberFormatInfo.cs'
//
////
//    // Property             Default Description
//    // PositiveSign           '+'   Character used to indicate positive values.
//    // NegativeSign           '-'   Character used to indicate negative values.
//    // NumberDecimalSeparator '.'   The character used as the decimal separator.
//    // NumberGroupSeparator   ','   The character used to separate groups of
//    //                              digits to the left of the decimal point.
//    // NumberDecimalDigits    2     The default number of decimal places.
//    // NumberGroupSizes       3     The number of digits in each group to the
//    //                              left of the decimal point.
//    // NaNSymbol             "NaN"  The string used to represent NaN values.
//    // PositiveInfinitySymbol"Infinity" The string used to represent positive
//    //                              infinities.
//    // NegativeInfinitySymbol"-Infinity" The string used to represent negative
//    //                              infinities.
//    //
//    //
//    //
//    // Property                  Default  Description
//    // CurrencyDecimalSeparator  '.'      The character used as the decimal
//    //                                    separator.
//    // CurrencyGroupSeparator    ','      The character used to separate groups
//    //                                    of digits to the left of the decimal
//    //                                    point.
//    // CurrencyDecimalDigits     2        The default number of decimal places.
//    // CurrencyGroupSizes        3        The number of digits in each group to
//    //                                    the left of the decimal point.
//    // CurrencyPositivePattern   0        The format of positive values.
//    // CurrencyNegativePattern   0        The format of negative values.
//    // CurrencySymbol            "$"      String used as local monetary symbol.
//    //
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class NumberFormatInfo : DotNetObject, ICloneable, IFormatProvider
{
    private static /*todo: volatile*/NumberFormatInfo invariantInfo;
    public int[] numberGroupSizes/*todo: implement initializer*/ = null;
    public int[] currencyGroupSizes/*todo: implement initializer*/ = null;
    public int[] percentGroupSizes/*todo: implement initializer*/ = null;
    public String positiveSign/*todo: implement initializer*/ = null;
    public String negativeSign/*todo: implement initializer*/ = null;
    public String numberDecimalSeparator/*todo: implement initializer*/ = null;
    public String numberGroupSeparator/*todo: implement initializer*/ = null;
    public String currencyGroupSeparator/*todo: implement initializer*/ = null;
    public String currencyDecimalSeparator/*todo: implement initializer*/ = null;
    public String currencySymbol/*todo: implement initializer*/ = null;
    public String ansiCurrencySymbol/*todo: implement initializer*/ = null;
    public String nanSymbol/*todo: implement initializer*/ = null;
    public String positiveInfinitySymbol/*todo: implement initializer*/ = null;
    public String negativeInfinitySymbol/*todo: implement initializer*/ = null;
    public String percentDecimalSeparator/*todo: implement initializer*/ = null;
    public String percentGroupSeparator/*todo: implement initializer*/ = null;
    public String percentSymbol/*todo: implement initializer*/ = null;
    public String perMilleSymbol/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 2)]
    public String[] nativeDigits/*todo: implement initializer*/ = null;
    // Ignored: // an index which points to a record in Culture Data Table.
    // Ignored: // We shouldn't be persisting dataItem (since its useless & we weren't using it),
    // Ignored: // but since COMNumber.cpp uses it and since serialization isn't implimented, its stuck for now.
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int m_dataItem/*todo: implement initializer*/ = int();
    public int numberDecimalDigits/*todo: implement initializer*/ = int();
    public int currencyDecimalDigits/*todo: implement initializer*/ = int();
    public int currencyPositivePattern/*todo: implement initializer*/ = int();
    public int currencyNegativePattern/*todo: implement initializer*/ = int();
    public int numberNegativePattern/*todo: implement initializer*/ = int();
    public int percentPositivePattern/*todo: implement initializer*/ = int();
    public int percentNegativePattern/*todo: implement initializer*/ = int();
    public int percentDecimalDigits/*todo: implement initializer*/ = int();
    // Ignored: [OptionalField(VersionAdded = 2)]
    public int digitSubstitution/*todo: implement initializer*/ = int();
    public bool isReadOnly/*todo: implement initializer*/ = bool();
    // Ignored: // We shouldn't be persisting m_useUserOverride (since its useless & we weren't using it),
    // Ignored: // but since COMNumber.cpp uses it and since serialization isn't implimented, its stuck for now.
    // Ignored: [OptionalField(VersionAdded = 1)]
    public bool m_useUserOverride/*todo: implement initializer*/ = bool();
    // Ignored: // Is this NumberFormatInfo for invariant culture?
    // Ignored: [OptionalField(VersionAdded = 2)]
    public bool m_isInvariant/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    // Ignored: #region Serialization
    // Ignored: // Check if NumberFormatInfo was not set up ambiguously for parsing as number and currency
    // Ignored: // eg. if the NumberDecimalSeparator and the NumberGroupSeparator were the same. This check
    // Ignored: // is solely for backwards compatibility / version tolerant serialization
    // Ignored: [OptionalField(VersionAdded = 1)]
    public bool validForParseAsNumber/*todo: implement initializer*/ = bool();
    // Ignored: [OptionalField(VersionAdded = 1)]
    public bool validForParseAsCurrency/*todo: implement initializer*/ = bool();
    //TODO: generate method OnSerializing
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method VerifyDecimalSeparator
    //TODO: generate method VerifyGroupSeparator
    //TODO: generate method VerifyNativeDigits
    //TODO: generate method VerifyDigitSubstitution
    //TODO: generate constructor
    //TODO: generate method VerifyWritable
    //TODO: generate property 'InvariantInfo'
    //TODO: generate method GetInstance
    //TODO: generate method Clone
    //TODO: generate property 'CurrencyDecimalDigits'
    //TODO: generate property 'CurrencyDecimalSeparator'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method CheckGroupSize
    //TODO: generate property 'CurrencyGroupSizes'
    //TODO: generate property 'NumberGroupSizes'
    //TODO: generate property 'PercentGroupSizes'
    //TODO: generate property 'CurrencyGroupSeparator'
    //TODO: generate property 'CurrencySymbol'
    //TODO: generate property 'CurrentInfo'
    //TODO: generate property 'NaNSymbol'
    //TODO: generate property 'CurrencyNegativePattern'
    //TODO: generate property 'NumberNegativePattern'
    //TODO: generate property 'PercentPositivePattern'
    //TODO: generate property 'PercentNegativePattern'
    //TODO: generate property 'NegativeInfinitySymbol'
    //TODO: generate property 'NegativeSign'
    //TODO: generate property 'NumberDecimalDigits'
    //TODO: generate property 'NumberDecimalSeparator'
    //TODO: generate property 'NumberGroupSeparator'
    //TODO: generate property 'CurrencyPositivePattern'
    //TODO: generate property 'PositiveInfinitySymbol'
    //TODO: generate property 'PositiveSign'
    //TODO: generate property 'PercentDecimalDigits'
    //TODO: generate property 'PercentDecimalSeparator'
    //TODO: generate property 'PercentGroupSeparator'
    //TODO: generate property 'PercentSymbol'
    //TODO: generate property 'PerMilleSymbol'
    //TODO: generate property 'NativeDigits'
    //TODO: generate property 'DigitSubstitution'
    //TODO: generate method GetFormat
    //TODO: generate method ReadOnly
    private enum NumberStyles InvalidNumberStyles/*todo: implement initializer*/ = (cast(NumberStyles)0);
    //TODO: generate method ValidateParseStyleInteger
    //TODO: generate method ValidateParseStyleFloatingPoint
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\NumberStyles.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum NumberStyles
{
    None = 0x00000000,
    AllowLeadingWhite = 0x00000001,
    AllowTrailingWhite = 0x00000002,
    AllowLeadingSign = 0x00000004,
    AllowTrailingSign = 0x00000008,
    AllowParentheses = 0x00000010,
    AllowDecimalPoint = 0x00000020,
    AllowThousands = 0x00000040,
    AllowExponent = 0x00000080,
    AllowCurrencySymbol = 0x00000100,
    AllowHexSpecifier = 0x00000200,
    Integer = AllowLeadingWhite | AllowTrailingWhite | AllowLeadingSign,
    HexNumber = AllowLeadingWhite | AllowTrailingWhite | AllowHexSpecifier,
    Number = AllowLeadingWhite | AllowTrailingWhite | AllowLeadingSign | AllowTrailingSign | AllowDecimalPoint | AllowThousands,
    Float = AllowLeadingWhite | AllowTrailingWhite | AllowLeadingSign | AllowDecimalPoint | AllowExponent,
    Currency = AllowLeadingWhite | AllowTrailingWhite | AllowLeadingSign | AllowTrailingSign | AllowParentheses | AllowDecimalPoint | AllowThousands | AllowCurrencySymbol,
    Any = AllowLeadingWhite | AllowTrailingWhite | AllowLeadingSign | AllowTrailingSign | AllowParentheses | AllowDecimalPoint | AllowThousands | AllowCurrencySymbol | AllowExponent,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\PersianCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Notes about PersianCalendar
//    //
//    ////////////////////////////////////////////////////////////////////////////
//    // Modern Persian calendar is a solar observation based calendar. Each new year begins on the day when the vernal equinox occurs before noon.
//    // The epoch is the date of the vernal equinox prior to the epoch of the Islamic calendar (March 19, 622 Julian or March 22, 622 Gregorian)
//
//    // There is no Persian year 0. Ordinary years have 365 days. Leap years have 366 days with the last month (Esfand) gaining the extra day.
//    /*
//     **  Calendar support range:
//     **      Calendar    Minimum     Maximum
//     **      ==========  ==========  ==========
//     **      Gregorian   0622/03/22   9999/12/31
//     **      Persian     0001/01/01   9378/10/13
//     */
//
//    [Serializable]
public class PersianCalendar : Calendar
{
    public static immutable int PersianEra/*todo: implement initializer*/ = int();
    public static long PersianEpoch/*todo: implement initializer*/ = long();
    private enum int ApproximateHalfYear/*todo: implement initializer*/ = int();
    public enum int DatePartYear/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    public enum int DatePartMonth/*todo: implement initializer*/ = int();
    public enum int DatePartDay/*todo: implement initializer*/ = int();
    public enum int MonthsPerYear/*todo: implement initializer*/ = int();
    public static int[] DaysToMonth/*todo: implement initializer*/ = null;
    public enum int MaxCalendarYear/*todo: implement initializer*/ = int();
    public enum int MaxCalendarMonth/*todo: implement initializer*/ = int();
    public enum int MaxCalendarDay/*todo: implement initializer*/ = int();
    public static DateTime minDate/*todo: implement initializer*/ = DateTime();
    public static DateTime maxDate/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'BaseCalendarID'
    //TODO: generate property 'ID'
    //TODO: generate method GetAbsoluteDatePersian
    //TODO: generate method CheckTicksRange
    //TODO: generate method CheckEraRange
    //TODO: generate method CheckYearRange
    //TODO: generate method CheckYearMonthRange
    //TODO: generate method MonthFromOrdinalDay
    //TODO: generate method DaysInPreviousMonths
    //TODO: generate method GetDatePart
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate property 'Eras'
    //TODO: generate method GetMonth
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method ToDateTime
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\RegionInfo.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class RegionInfo : DotNetObject
{
    public String m_name;
    // Ignored: //
    // Ignored: // The CultureData instance that we are going to read data from.
    // Ignored: //
    // Ignored: [NonSerialized]
    public CultureData m_cultureData;
    public static /*todo: volatile*/RegionInfo s_currentRegionInfo;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetName
    // Ignored: #region Serialization
    // Ignored: //
    // Ignored: //  m_cultureId is needed for serialization only to detect the case if the region info is created using the name or using the LCID.
    // Ignored: //  in case m_cultureId is zero means that the RigionInfo is created using name. otherwise it is created using LCID.
    // Ignored: //
    // Ignored: [OptionalField(VersionAdded = 2)]
    private int m_cultureId;
    // Ignored: // the following field is defined to keep the compatibility with Everett.
    // Ignored: // don't change/remove the names/types of these field.
    // Ignored: [OptionalField(VersionAdded = 2)]
    public int m_dataItem/*todo: implement initializer*/ = int();
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate property 'CurrentRegion'
    //TODO: generate property 'Name'
    //TODO: generate property 'EnglishName'
    //TODO: generate property 'DisplayName'
    //TODO: generate property 'NativeName'
    //TODO: generate property 'TwoLetterISORegionName'
    //TODO: generate property 'ThreeLetterISORegionName'
    //TODO: generate property 'ThreeLetterWindowsRegionName'
    //TODO: generate property 'IsMetric'
    //TODO: generate property 'GeoId'
    //TODO: generate property 'CurrencyEnglishName'
    //TODO: generate property 'CurrencyNativeName'
    //TODO: generate property 'CurrencySymbol'
    //TODO: generate property 'ISOCurrencySymbol'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\SortKey.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class SortKey : DotNetObject
{
    // Ignored: //--------------------------------------------------------------------//
    // Ignored: //                        Internal Information                        //
    // Ignored: //--------------------------------------------------------------------//
    // Ignored: //
    // Ignored: //  Variables.
    // Ignored: //
    // Ignored: [OptionalField(VersionAdded = 3)]
    public String localeName;
    // Ignored: [OptionalField(VersionAdded = 1)] // LCID field so serialization is Whidbey compatible though we don't officially support it
    public int win32LCID;
    public CompareOptions options;
    public String m_String;
    public ubyte[] m_KeyData;
    //TODO: generate constructor
    //TODO: generate method OnSerializing
    //TODO: generate method OnDeserialized
    //TODO: generate property 'OriginalString'
    //TODO: generate property 'KeyData'
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\SortVersion.cs'
//
//[Serializable]
public final class SortVersion : DotNetObject, IEquatable1!(SortVersion)
{
    private int m_NlsVersion;
    private Guid m_SortId;
    //TODO: generate property 'FullVersion'
    //TODO: generate property 'SortId'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\StringInfo.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class StringInfo : DotNetObject
{
    // Ignored: [OptionalField(VersionAdded = 2)]
    private String m_str;
    // Ignored: // We allow this class to be serialized but there is no conceivable reason
    // Ignored: // for them to do so. Thus, we do not serialize the instance variables.
    // Ignored: [NonSerialized]
    private int[] m_indexes;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'Indexes'
    //TODO: generate property 'String'
    //TODO: generate property 'LengthInTextElements'
    //TODO: generate method SubstringByTextElements
    //TODO: generate method SubstringByTextElements
    //TODO: generate method GetNextTextElement
    //TODO: generate method GetCurrentTextElementLen
    //TODO: generate method GetNextTextElement
    //TODO: generate method GetTextElementEnumerator
    //TODO: generate method GetTextElementEnumerator
    //TODO: generate method ParseCombiningCharacters
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\TaiwanCalendar.cs'
//
///* SSS_DROP_BEGIN */ /* SSS_WARNINGS_OFF */
//    /*=================================TaiwanCalendar==========================
//    **
//    ** Taiwan calendar is based on the Gregorian calendar.  And the year is an offset to Gregorian calendar.
//    ** That is,
//    **      Taiwan year = Gregorian year - 1911.  So 1912/01/01 A.D. is Taiwan 1/01/01
//    **
//    **  Calendar support range:
//    **      Calendar    Minimum     Maximum
//    **      ==========  ==========  ==========
//    **      Gregorian   1912/01/01  9999/12/31
//    **      Taiwan      01/01/01    8088/12/31
//    ============================================================================*/
//    /* SSS_WARNINGS_ON */ /* SSS_DROP_END */  
//
//    [System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class TaiwanCalendar : Calendar
{
    public static EraInfo[] taiwanEraInfo/*todo: implement initializer*/ = null;
    public static /*todo: volatile*/Calendar s_defaultInstance;
    public GregorianCalendarHelper helper;
    //TODO: generate method GetDefaultInstance
    public static immutable DateTime calendarMinValue/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetWeekOfYear
    //TODO: generate method GetEra
    //TODO: generate method GetMonth
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method IsLeapYear
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method ToDateTime
    //TODO: generate property 'Eras'
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\TaiwanLunisolarCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Notes about TaiwanLunisolarCalendar
//    //
//    ////////////////////////////////////////////////////////////////////////////
//     /*
//     **  Calendar support range:
//     **      Calendar               Minimum             Maximum
//     **      ==========     ==========  ==========
//     **      Gregorian              1912/02/18          2051/02/10
//     **      TaiwanLunisolar     1912/01/01          2050/13/29
//     */
//
//    [Serializable]
public class TaiwanLunisolarCalendar : EastAsianLunisolarCalendar
{
    public static EraInfo[] taiwanLunisolarEraInfo/*todo: implement initializer*/ = null;
    public GregorianCalendarHelper helper;
    public enum int MIN_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_LUNISOLAR_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MIN_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_YEAR/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_MONTH/*todo: implement initializer*/ = int();
    public enum int MAX_GREGORIAN_DAY/*todo: implement initializer*/ = int();
    public static DateTime minDate/*todo: implement initializer*/ = DateTime();
    public static DateTime maxDate/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'DaysInYearBeforeMinSupportedYear'
    private static immutable int[] yinfo/*todo: implement initializer*/ = null;
    //TODO: generate property 'MinCalendarYear'
    //TODO: generate property 'MaxCalendarYear'
    //TODO: generate property 'MinDate'
    //TODO: generate property 'MaxDate'
    //TODO: generate property 'CalEraInfo'
    //TODO: generate method GetYearInfo
    //TODO: generate method GetYear
    //TODO: generate method GetGregorianYear
    //TODO: generate constructor
    //TODO: generate method GetEra
    //TODO: generate property 'BaseCalendarID'
    //TODO: generate property 'ID'
    //TODO: generate property 'Eras'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\TextElementEnumerator.cs'
//
////
//    // This is public because GetTextElement() is public.
//    //
//
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class TextElementEnumerator : DotNetObject, IEnumerator
{
    private String str;
    private int index;
    private int startIndex;
    // Ignored: [NonSerialized]
    private int strLen;
    // Ignored: [NonSerialized]
    private int currTextElementLen;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private UnicodeCategory uc;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private int charLen;
    //TODO: generate constructor
    private int endIndex;
    private int nextTextElementLen;
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate method GetTextElement
    //TODO: generate property 'ElementIndex'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\TextInfo.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class TextInfo : DotNetObject, ICloneable, IDeserializationCallback
{
    private enum Tristate : ubyte
    {
        NotInitialized,
        True,
        False,
    }
    // Ignored: //
    // Ignored: //  Variables.
    // Ignored: //
    // Ignored: [OptionalField(VersionAdded = 2)]
    private String m_listSeparator;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private bool m_isReadOnly/*todo: implement initializer*/ = bool();
    // Ignored: //
    // Ignored: // In Whidbey we had several names:
    // Ignored: //      m_win32LangID is the name of the culture, but only used for (de)serialization.
    // Ignored: //      customCultureName is the name of the creating custom culture (if custom)  In combination with m_win32LangID
    // Ignored: //              this is authoratative, ie when deserializing.
    // Ignored: //      m_cultureTableRecord was the data record of the creating culture.  (could have different name if custom)
    // Ignored: //      m_textInfoID is the LCID of the textinfo itself (no longer used)
    // Ignored: //      m_name is the culture name (from cultureinfo.name)
    // Ignored: //
    // Ignored: // In Silverlight/Arrowhead this is slightly different:
    // Ignored: //      m_cultureName is the name of the creating culture.  Note that we consider this authoratative,
    // Ignored: //              if the culture's textinfo changes when deserializing, then behavior may change.
    // Ignored: //              (ala Whidbey behavior).  This is the only string Arrowhead needs to serialize.
    // Ignored: //      m_cultureData is the data that backs this class.
    // Ignored: //      m_textInfoName  is the actual name of the textInfo (from cultureData.STEXTINFO)
    // Ignored: //              m_textInfoName can be the same as m_cultureName on Silverlight since the OS knows
    // Ignored: //              how to do the sorting. However in the desktop, when we call the sorting dll, it doesn't
    // Ignored: //              know how to resolve custom locle names to sort ids so we have to have alredy resolved this.
    // Ignored: //
    // Ignored: [OptionalField(VersionAdded = 3)]
    private String m_cultureName;
    // Ignored: [NonSerialized]
    private CultureData m_cultureData;
    // Ignored: [NonSerialized]
    private String m_textInfoName;
    // Ignored: [NonSerialized]
    private IntPtr m_dataHandle;
    // Ignored: [NonSerialized]
    private IntPtr m_handleOrigin;
    // Ignored: [NonSerialized]
    private Tristate m_IsAsciiCasingSameAsInvariant/*todo: implement initializer*/ = (cast(Tristate)0);
    //TODO: generate property 'Invariant'
    public static /*todo: volatile*/TextInfo s_Invariant;
    //TODO: generate constructor
    // Ignored: ////////////////////////////////////////////////////////////////////////
    // Ignored: //
    // Ignored: //  Serialization / Deserialization
    // Ignored: //
    // Ignored: //  Note that we have to respect the Whidbey behavior for serialization compatibility
    // Ignored: //
    // Ignored: ////////////////////////////////////////////////////////////////////////
    // Ignored: #region Serialization
    // Ignored: // the following fields are defined to keep the compatibility with Whidbey.
    // Ignored: // don't change/remove the names/types of these fields.
    // Ignored: [OptionalField(VersionAdded = 2)]
    private String customCultureName;
    // Ignored: // the following fields are defined to keep compatibility with Everett.
    // Ignored: // don't change/remove the names/types of these fields.
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int m_nDataItem;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public bool m_useUserOverride;
    // Ignored: [OptionalField(VersionAdded = 1)]
    public int m_win32LangID;
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate method GetHashCodeOrdinalIgnoreCase
    //TODO: generate method GetHashCodeOrdinalIgnoreCase
    //TODO: generate method TryFastFindStringOrdinalIgnoreCase
    //TODO: generate method CompareOrdinalIgnoreCase
    //TODO: generate method CompareOrdinalIgnoreCaseEx
    //TODO: generate method IndexOfStringOrdinalIgnoreCase
    //TODO: generate method LastIndexOfStringOrdinalIgnoreCase
    //TODO: generate property 'ANSICodePage'
    //TODO: generate property 'OEMCodePage'
    //TODO: generate property 'MacCodePage'
    //TODO: generate property 'EBCDICCodePage'
    //TODO: generate property 'LCID'
    //TODO: generate property 'CultureName'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Clone
    //TODO: generate method ReadOnly
    //TODO: generate method VerifyWritable
    //TODO: generate method SetReadOnlyState
    //TODO: generate property 'ListSeparator'
    //TODO: generate method ToLower
    //TODO: generate method ToLower
    //TODO: generate method ToLowerAsciiInvariant
    //TODO: generate method ToUpper
    //TODO: generate method ToUpper
    //TODO: generate method ToUpperAsciiInvariant
    //TODO: generate method IsAscii
    //TODO: generate property 'IsAsciiCasingSameAsInvariant'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToTitleCase
    //TODO: generate method AddNonLetter
    //TODO: generate method AddTitlecaseLetter
    private enum int wordSeparatorMask/*todo: implement initializer*/ = int();
    //TODO: generate method IsWordSeparator
    //TODO: generate method IsLetterCategory
    //TODO: generate property 'IsRightToLeft'
    //TODO: generate method OnDeserialization
    //TODO: generate method GetCaseInsensitiveHashCode
    //TODO: generate method GetCaseInsensitiveHashCode
    //TODO: generate method InternalChangeCaseChar
    //TODO: generate method InternalChangeCaseString
    //TODO: generate method InternalGetCaseInsHash
    //TODO: generate method InternalCompareStringOrdinalIgnoreCase
    //TODO: generate method InternalTryFindStringOrdinalIgnoreCase
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\ThaiBuddhistCalendar.cs'
//
///*=================================ThaiBuddhistCalendar==========================
//    **
//    ** ThaiBuddhistCalendar is based on Gregorian calendar.  Its year value has
//    ** an offset to the Gregorain calendar.
//    **
//    **  Calendar support range:
//    **      Calendar    Minimum     Maximum
//    **      ==========  ==========  ==========
//    **      Gregorian   0001/01/01   9999/12/31
//    **      Thai        0544/01/01  10542/12/31
//    ============================================================================*/
//
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class ThaiBuddhistCalendar : Calendar
{
    public static EraInfo[] thaiBuddhistEraInfo/*todo: implement initializer*/ = null;
    public enum int ThaiBuddhistEra/*todo: implement initializer*/ = int();
    public GregorianCalendarHelper helper;
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'ID'
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDaysInMonth
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetWeekOfYear
    //TODO: generate method GetEra
    //TODO: generate method GetMonth
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method IsLeapYear
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method ToDateTime
    //TODO: generate property 'Eras'
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\TimeSpanFormat.cs'
//
public class TimeSpanFormat : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method IntToString
    public static immutable FormatLiterals PositiveInvariantFormatLiterals/*todo: implement initializer*/ = FormatLiterals();
    public static immutable FormatLiterals NegativeInvariantFormatLiterals/*todo: implement initializer*/ = FormatLiterals();
    public enum Pattern
    {
        None = 0,
        Minimum = 1,
        Full = 2,
    }
    //TODO: generate method Format
    //TODO: generate method FormatStandard
    //TODO: generate method FormatCustomized
    public static struct FormatLiterals
    {
        //TODO: generate property 'Start'
        //TODO: generate property 'DayHourSep'
        //TODO: generate property 'HourMinuteSep'
        //TODO: generate property 'MinuteSecondSep'
        //TODO: generate property 'SecondFractionSep'
        //TODO: generate property 'End'
        public String AppCompatLiteral;
        public int dd;
        public int hh;
        public int mm;
        public int ss;
        public int ff;
        private String[] literals;
        //TODO: generate method InitInvariant
        //TODO: generate method Init
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\TimeSpanParse.cs'
//
public class TimeSpanParse : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ValidateStyles
    public enum int unlimitedDigits/*todo: implement initializer*/ = int();
    public enum int maxFractionDigits/*todo: implement initializer*/ = int();
    public enum int maxDays/*todo: implement initializer*/ = int();
    public enum int maxHours/*todo: implement initializer*/ = int();
    public enum int maxMinutes/*todo: implement initializer*/ = int();
    public enum int maxSeconds/*todo: implement initializer*/ = int();
    public enum int maxFraction/*todo: implement initializer*/ = int();
    private enum TimeSpanThrowStyle
    {
        None = 0,
        All = 1,
    }
    private enum ParseFailureKind
    {
        None = 0,
        ArgumentNull = 1,
        Format = 2,
        FormatWithParameter = 3,
        Overflow = 4,
    }
    // Ignored: [Flags]
    private enum TimeSpanStandardStyles
    {
        None = 0x00000000,
        Invariant = 0x00000001,
        Localized = 0x00000002,
        RequireFull = 0x00000004,
        Any = Invariant | Localized,
    }
    private enum TTT
    {
        None = 0,
        End = 1,
        Num = 2,
        Sep = 3,
        NumOverflow = 4,
    }
    private static immutable TimeSpanToken zero/*todo: implement initializer*/ = TimeSpanToken();
    private static struct TimeSpanToken
    {
        public TTT ttt;
        public int num;
        public int zeroes;
        public String sep;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method IsInvalidNumber
    }
    private static struct TimeSpanTokenizer
    {
        private int m_pos;
        private String m_value;
        //TODO: generate method Init
        //TODO: generate method Init
        //TODO: generate method GetNextToken
        //TODO: generate property 'EOL'
        //TODO: generate method BackOne
        //TODO: generate property 'NextChar'
        //TODO: generate property 'CurrentChar'
    }
    private static struct TimeSpanRawInfo
    {
        //TODO: generate property 'PositiveInvariant'
        //TODO: generate property 'NegativeInvariant'
        //TODO: generate property 'PositiveLocalized'
        //TODO: generate property 'NegativeLocalized'
        //TODO: generate method FullAppCompatMatch
        //TODO: generate method PartialAppCompatMatch
        //TODO: generate method FullMatch
        //TODO: generate method FullDMatch
        //TODO: generate method FullHMMatch
        //TODO: generate method FullDHMMatch
        //TODO: generate method FullHMSMatch
        //TODO: generate method FullDHMSMatch
        //TODO: generate method FullHMSFMatch
        public TTT lastSeenTTT;
        public int tokenCount;
        public int SepCount;
        public int NumCount;
        public String[] literals;
        public TimeSpanToken[] numbers;
        private TimeSpanFormat.FormatLiterals m_posLoc;
        private TimeSpanFormat.FormatLiterals m_negLoc;
        private bool m_posLocInit;
        private bool m_negLocInit;
        private String m_fullPosPattern;
        private String m_fullNegPattern;
        private enum int MaxTokens/*todo: implement initializer*/ = int();
        private enum int MaxLiteralTokens/*todo: implement initializer*/ = int();
        private enum int MaxNumericTokens/*todo: implement initializer*/ = int();
        //TODO: generate method Init
        //TODO: generate method ProcessToken
        //TODO: generate method AddSep
        //TODO: generate method AddNum
    }
    private static struct TimeSpanResult
    {
        public TimeSpan parsedTimeSpan;
        public TimeSpanThrowStyle throwStyle;
        public ParseFailureKind m_failure;
        public String m_failureMessageID;
        public DotNetObject m_failureMessageFormatArgument;
        public String m_failureArgumentName;
        //TODO: generate method Init
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method GetTimeSpanParseException
    }
    //TODO: generate method TryTimeToTicks
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method ParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method ParseExactMultiple
    //TODO: generate method TryParseExactMultiple
    //TODO: generate method TryParseTimeSpan
    //TODO: generate method ProcessTerminalState
    //TODO: generate method ProcessTerminal_DHMSF
    //TODO: generate method ProcessTerminal_HMS_F_D
    //TODO: generate method ProcessTerminal_HM_S_D
    //TODO: generate method ProcessTerminal_HM
    //TODO: generate method ProcessTerminal_D
    //TODO: generate method TryParseExactTimeSpan
    //TODO: generate method TryParseByFormat
    //TODO: generate method ParseExactDigits
    //TODO: generate method ParseExactDigits
    //TODO: generate method ParseExactLiteral
    //TODO: generate method TryParseTimeSpanConstant
    private static struct StringParser
    {
        private String str;
        private wchar ch;
        private int pos;
        private int len;
        //TODO: generate method NextChar
        //TODO: generate method NextNonDigit
        //TODO: generate method TryParse
        //TODO: generate method ParseInt
        //TODO: generate method ParseTime
        //TODO: generate method SkipBlanks
    }
    //TODO: generate method TryParseExactMultipleTimeSpan
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\TimeSpanStyles.cs'
//
// Ignored: [Flags]
public enum TimeSpanStyles
{
    None = 0x00000000,
    AssumeNegative = 0x00000001,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\UmAlQuraCalendar.cs'
//
//////////////////////////////////////////////////////////////////////////////
//    //
//    //  Notes about UmAlQuraCalendar
//    //
//    ////////////////////////////////////////////////////////////////////////////
//     /*
//     **  Calendar support range:
//     **      Calendar    Minimum     Maximum
//     **      ==========  ==========  ==========
//     **      Gregorian   1900/04/30   2077/11/17
//     **      UmAlQura    1318/01/01   1500/12/30
//     */
//
//    [Serializable]
public class UmAlQuraCalendar : Calendar
{
    public enum int MinCalendarYear/*todo: implement initializer*/ = int();
    public enum int MaxCalendarYear/*todo: implement initializer*/ = int();
    public static struct DateMapping
    {
        //TODO: generate constructor
        public int HijriMonthsLengthFlags;
        public DateTime GregorianDate;
    }
    private static immutable DateMapping[] HijriYearInfo/*todo: implement initializer*/ = null;
    //TODO: generate method InitDateMapping
    public enum int UmAlQuraEra/*todo: implement initializer*/ = int();
    public enum int DateCycle/*todo: implement initializer*/ = int();
    public enum int DatePartYear/*todo: implement initializer*/ = int();
    public enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    public enum int DatePartMonth/*todo: implement initializer*/ = int();
    public enum int DatePartDay/*todo: implement initializer*/ = int();
    public static DateTime minDate/*todo: implement initializer*/ = DateTime();
    public static DateTime maxDate/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'MinSupportedDateTime'
    //TODO: generate property 'MaxSupportedDateTime'
    //TODO: generate property 'AlgorithmType'
    //TODO: generate constructor
    //TODO: generate property 'BaseCalendarID'
    //TODO: generate property 'ID'
    //TODO: generate property 'DaysInYearBeforeMinSupportedYear'
    //TODO: generate method ConvertHijriToGregorian
    //TODO: generate method GetAbsoluteDateUmAlQura
    //TODO: generate method CheckTicksRange
    //TODO: generate method CheckEraRange
    //TODO: generate method CheckYearRange
    //TODO: generate method CheckYearMonthRange
    //TODO: generate method ConvertGregorianToHijri
    //TODO: generate method GetDatePart
    //TODO: generate method AddMonths
    //TODO: generate method AddYears
    //TODO: generate method GetDayOfMonth
    //TODO: generate method GetDayOfWeek
    //TODO: generate method GetDayOfYear
    //TODO: generate method GetDaysInMonth
    //TODO: generate method RealGetDaysInYear
    //TODO: generate method GetDaysInYear
    //TODO: generate method GetEra
    //TODO: generate property 'Eras'
    //TODO: generate method GetMonth
    //TODO: generate method GetMonthsInYear
    //TODO: generate method GetYear
    //TODO: generate method IsLeapDay
    //TODO: generate method GetLeapMonth
    //TODO: generate method IsLeapMonth
    //TODO: generate method IsLeapYear
    //TODO: generate method ToDateTime
    private enum int DEFAULT_TWO_DIGIT_YEAR_MAX/*todo: implement initializer*/ = int();
    //TODO: generate property 'TwoDigitYearMax'
    //TODO: generate method ToFourDigitYear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\UnicodeCategory.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum UnicodeCategory
{
    UppercaseLetter = 0,
    LowercaseLetter = 1,
    TitlecaseLetter = 2,
    ModifierLetter = 3,
    OtherLetter = 4,
    NonSpacingMark = 5,
    SpacingCombiningMark = 6,
    EnclosingMark = 7,
    DecimalDigitNumber = 8,
    LetterNumber = 9,
    OtherNumber = 10,
    SpaceSeparator = 11,
    LineSeparator = 12,
    ParagraphSeparator = 13,
    Control = 14,
    Format = 15,
    Surrogate = 16,
    PrivateUse = 17,
    ConnectorPunctuation = 18,
    DashPunctuation = 19,
    OpenPunctuation = 20,
    ClosePunctuation = 21,
    InitialQuotePunctuation = 22,
    FinalQuotePunctuation = 23,
    OtherPunctuation = 24,
    MathSymbol = 25,
    CurrencySymbol = 26,
    ModifierSymbol = 27,
    OtherSymbol = 28,
    OtherNotAssigned = 29,
}
