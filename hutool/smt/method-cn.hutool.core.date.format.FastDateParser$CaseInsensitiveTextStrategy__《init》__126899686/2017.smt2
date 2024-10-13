(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2564 0)
(declare-sort var2990 0)
(declare-sort var514 0)
(declare-sort var678 0)
(declare-sort var1678 0)
(declare-sort var3801 0)
(declare-sort var1149 0)
(declare-sort var505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/959096143 (var678 var1678) void)
(declare-fun cast-from-var2564-to-var678 (var2564) var678)
(declare-fun field/-93179322 (var2564) Int)
(declare-fun locale/-93179322 (var2564) var514)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var505_access$500/-328938706 (var2990 var514 Int String) var1149)
(declare-fun lKeyValues/-93179322 (var2564) var1149)
(declare-fun length/-171891354 (String) Int)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun createPattern/-378143075 (var678 String) void)
(declare-const null-var2564 var2564)
(declare-const null-Int Int)
(declare-const null-var2990 var2990)
(declare-const null-var514 var514)
(declare-const null-NullType var3801)
(declare-const null-var1678 var1678)
(declare-const var2593 var2564) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy 
(assert (not (= var2593 null-var2564)))
(declare-const var1331 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1331 null-Int)))
(declare-const var2865 var2990) ; Statement: r3 := @parameter1: java.util.Calendar 
(assert (not (= var2865 null-var2990)))
(declare-const var1850 var514) ; Statement: r1 := @parameter2: java.util.Locale 
(assert (not (= var1850 null-var514)))
(assert true)
;(assert (<init>/959096143 (cast-from-var2564-to-var678 var2593) null-var1678)) ; Statement: specialinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void <init>(cn.hutool.core.date.format.FastDateParser$1)>(null) 

(declare-const var2593!1 var2564)
(declare-const var164 var3801)
(declare-const var2593!2 var2564)
(assert (not (= var2593!2 null-var2564)))
(assert (= (field/-93179322 var2593!2) var1331)) ; Statement: r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: int field> = i0 
(declare-const var2593!3 var2564)
(assert (not (= var2593!3 null-var2564)))
(assert (= (locale/-93179322 var2593!3) var1850)) ; Statement: r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale> = r1 
(define-const var1380 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1380)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1380!1 String)
(assert (= var1380!1 ""))
(assert true)
;(assert (append/672562846 var1380!1 "((?iu)")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)") 
(declare-const var1380!2 String)
(assert (= var1380!2 (str.++ var1380!1 "((?iu)")))
(define-const var685 var1149 (var505_access$500/-328938706 var2865 var1850 var1331 var1380!2)) ; Statement: $r4 = staticinvoke <cn.hutool.core.date.format.FastDateParser: java.util.Map access$500(java.util.Calendar,java.util.Locale,int,java.lang.StringBuilder)>(r3, r1, i0, $r2) 
(declare-const var2593!4 var2564)
(assert (not (= var2593!4 null-var2564)))
(assert (= (lKeyValues/-93179322 var2593!4) var685)) ; Statement: r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues> = $r4 
(assert true)
(define-const var3733 Int (length/-171891354 var1380!2)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
(define-const var2965 Int (- var3733 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
;(assert (setLength/1276735992 var1380!2 var2965)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>($i2) 

(declare-const var1380!3 String)
(declare-const var2965!1 Int)
(assert true)
;(assert (append/672562846 var1380!3 ")")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1380!4 String)
(assert (= var1380!4 (str.++ var1380!3 ")")))
(assert true)
;(assert (createPattern/-378143075 (cast-from-var2564-to-var678 var2593!4) var1380!4)) ; Statement: virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: void createPattern(java.lang.StringBuilder)>($r2) 

(declare-const var2593!5 var2564)
(declare-const var1380!5 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/959096143=([cn.hutool.core.date.format.FastDateParser$PatternStrategy, cn.hutool.core.date.format.FastDateParser$1], void), cast-from-var2564-to-var678=([cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy], cn.hutool.core.date.format.FastDateParser$PatternStrategy), field/-93179322=([cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy], int), locale/-93179322=([cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy], java.util.Locale), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var505_access$500/-328938706=([java.util.Calendar, java.util.Locale, int, java.lang.StringBuilder], java.util.Map), lKeyValues/-93179322=([cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy], java.util.Map), length/-171891354=([java.lang.StringBuilder], int), setLength/1276735992=([java.lang.StringBuilder, int], void), createPattern/-378143075=([cn.hutool.core.date.format.FastDateParser$PatternStrategy, java.lang.StringBuilder], void)}
; {var2564=cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy, var2593=r0, var1331=i0, var2990=java.util.Calendar, var2865=r3, var514=java.util.Locale, var1850=r1, var678=cn.hutool.core.date.format.FastDateParser$PatternStrategy, var1678=cn.hutool.core.date.format.FastDateParser$1, var164=null, var3801=null_type, var1380=$r2, var1149=java.util.Map, var505=cn.hutool.core.date.format.FastDateParser, var685=$r4, var3733=$i1, var2965=$i2}
; {cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy=var2564, r0=var2593, i0=var1331, java.util.Calendar=var2990, r3=var2865, java.util.Locale=var514, r1=var1850, cn.hutool.core.date.format.FastDateParser$PatternStrategy=var678, cn.hutool.core.date.format.FastDateParser$1=var1678, null=var164, null_type=var3801, $r2=var1380, java.util.Map=var1149, cn.hutool.core.date.format.FastDateParser=var505, $r4=var685, $i1=var3733, $i2=var2965}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy;	i0 := @parameter0: int;	r3 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.util.Locale;	specialinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void <init>(cn.hutool.core.date.format.FastDateParser$1)>(null);	r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: int field> = i0;	r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale> = r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("((?iu)");	$r4 = staticinvoke <cn.hutool.core.date.format.FastDateParser: java.util.Map access$500(java.util.Calendar,java.util.Locale,int,java.lang.StringBuilder)>(r3, r1, i0, $r2);	r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues> = $r4;	$i1 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	$i2 = $i1 - 1;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>($i2);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: void createPattern(java.lang.StringBuilder)>($r2);	return
;block_num 1