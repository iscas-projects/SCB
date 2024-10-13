(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3835 0)
(declare-sort var1023 0)
(declare-sort var241 0)
(declare-sort var2348 0)
(declare-sort var2301 0)
(declare-sort var1873 0)
(declare-sort var2631 0)
(declare-sort var2965 0)
(declare-sort var3905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1132792119 (var2348 var2301) void)
(declare-fun cast-from-var3835-to-var2348 (var3835) var2348)
(declare-fun field/-1318375070 (var3835) Int)
(declare-fun var2631_toLocale/455255440 (var241) var241)
(declare-fun locale/-1318375070 (var3835) var241)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3905_access$100/542141246 (var1023 var241 Int String) var2965)
(declare-fun lKeyValues/-1318375070 (var3835) var2965)
(declare-fun length/-171891354 (String) Int)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun createPattern/1592915889 (var2348 String) void)
(declare-const null-var3835 var3835)
(declare-const null-Int Int)
(declare-const null-var1023 var1023)
(declare-const null-var241 var241)
(declare-const null-NullType var1873)
(declare-const null-var2301 var2301)
(declare-const var407 var3835) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy 
(assert (not (= var407 null-var3835)))
(declare-const var945 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var945 null-Int)))
(declare-const var3094 var1023) ; Statement: r4 := @parameter1: java.util.Calendar 
(assert (not (= var3094 null-var1023)))
(declare-const var1163 var241) ; Statement: r1 := @parameter2: java.util.Locale 
(assert (not (= var1163 null-var241)))
(assert true)
;(assert (<init>/1132792119 (cast-from-var3835-to-var2348 var407) null-var2301)) ; Statement: specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: void <init>(org.apache.commons.lang3.time.FastDateParser$1)>(null) 

(declare-const var407!1 var3835)
(declare-const var3566 var1873)
(declare-const var407!2 var3835)
(assert (not (= var407!2 null-var3835)))
(assert (= (field/-1318375070 var407!2) var945)) ; Statement: r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> = i0 
(define-const var174 var241 (var2631_toLocale/455255440 var1163)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1) 
(declare-const var407!3 var3835)
(assert (not (= var407!3 null-var3835)))
(assert (= (locale/-1318375070 var407!3) var174)) ; Statement: r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale> = $r2 
(define-const var3568 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3568)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3568!1 String)
(assert (= var3568!1 ""))
(assert true)
;(assert (append/672562846 var3568!1 "((?iu)")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)") 
(declare-const var3568!2 String)
(assert (= var3568!2 (str.++ var3568!1 "((?iu)")))
(define-const var3769 var2965 (var3905_access$100/542141246 var3094 var1163 var945 var3568!2)) ; Statement: $r5 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.util.Map access$100(java.util.Calendar,java.util.Locale,int,java.lang.StringBuilder)>(r4, r1, i0, $r3) 
(declare-const var407!4 var3835)
(assert (not (= var407!4 null-var3835)))
(assert (= (lKeyValues/-1318375070 var407!4) var3769)) ; Statement: r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues> = $r5 
(assert true)
(define-const var505 Int (length/-171891354 var3568!2)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
(define-const var3093 Int (- var505 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
;(assert (setLength/1276735992 var3568!2 var3093)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: void setLength(int)>($i2) 

(declare-const var3568!3 String)
(declare-const var3093!1 Int)
(assert true)
;(assert (append/672562846 var3568!3 ")")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3568!4 String)
(assert (= var3568!4 (str.++ var3568!3 ")")))
(assert true)
;(assert (createPattern/1592915889 (cast-from-var3835-to-var2348 var407!4) var3568!4)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: void createPattern(java.lang.StringBuilder)>($r3) 

(declare-const var407!5 var3835)
(declare-const var3568!5 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1132792119=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy, org.apache.commons.lang3.time.FastDateParser$1], void), cast-from-var3835-to-var2348=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], org.apache.commons.lang3.time.FastDateParser$PatternStrategy), field/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], int), var2631_toLocale/455255440=([java.util.Locale], java.util.Locale), locale/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], java.util.Locale), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3905_access$100/542141246=([java.util.Calendar, java.util.Locale, int, java.lang.StringBuilder], java.util.Map), lKeyValues/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], java.util.Map), length/-171891354=([java.lang.StringBuilder], int), setLength/1276735992=([java.lang.StringBuilder, int], void), createPattern/1592915889=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy, java.lang.StringBuilder], void)}
; {var3835=org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy, var407=r0, var945=i0, var1023=java.util.Calendar, var3094=r4, var241=java.util.Locale, var1163=r1, var2348=org.apache.commons.lang3.time.FastDateParser$PatternStrategy, var2301=org.apache.commons.lang3.time.FastDateParser$1, var3566=null, var1873=null_type, var2631=org.apache.commons.lang3.LocaleUtils, var174=$r2, var3568=$r3, var2965=java.util.Map, var3905=org.apache.commons.lang3.time.FastDateParser, var3769=$r5, var505=$i1, var3093=$i2}
; {org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy=var3835, r0=var407, i0=var945, java.util.Calendar=var1023, r4=var3094, java.util.Locale=var241, r1=var1163, org.apache.commons.lang3.time.FastDateParser$PatternStrategy=var2348, org.apache.commons.lang3.time.FastDateParser$1=var2301, null=var3566, null_type=var1873, org.apache.commons.lang3.LocaleUtils=var2631, $r2=var174, $r3=var3568, java.util.Map=var2965, org.apache.commons.lang3.time.FastDateParser=var3905, $r5=var3769, $i1=var505, $i2=var3093}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy;	i0 := @parameter0: int;	r4 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.util.Locale;	specialinvoke r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: void <init>(org.apache.commons.lang3.time.FastDateParser$1)>(null);	r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> = i0;	$r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1);	r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale> = $r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)");	$r5 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.util.Map access$100(java.util.Calendar,java.util.Locale,int,java.lang.StringBuilder)>(r4, r1, i0, $r3);	r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues> = $r5;	$i1 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	$i2 = $i1 - 1;	virtualinvoke $r3.<java.lang.StringBuilder: void setLength(int)>($i2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke r0.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: void createPattern(java.lang.StringBuilder)>($r3);	return
;block_num 1