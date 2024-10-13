(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2761 0)
(declare-sort var3078 0)
(declare-sort var3727 0)
(declare-sort var1804 0)
(declare-sort var792 0)
(declare-sort var1903 0)
(declare-sort var3964 0)
(declare-sort var2890 0)
(declare-sort var595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/1933598341 (var2761) var1804)
(declare-fun textDelimiter/1574217128 (var792) Int)
(declare-fun cast-from-var1804-to-var792 (var1804) var792)
(declare-fun var3964_bootstrap$/71134752 () var1903)
(declare-fun var2890_trim/1292192406 (String Int var1903) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2890_unWrap/230064591 (String Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2890_replace/-799257796 (String String String) String)
(declare-fun trimField/124469214 (var1804) Bool)
(declare-fun var3078_add/328494887 (var3078 var595) Bool)
(declare-fun cast-from-String-to-var595 (String) var595)
(declare-const null-var2761 var2761)
(declare-const null-var3078 var3078)
(declare-const null-String String)
(declare-const var1317 var2761) ; Statement: r0 := @this: cn.hutool.core.text.csv.CsvParser 
(assert (not (= var1317 null-var2761)))
(declare-const var1896 var3078) ; Statement: r13 := @parameter0: java.util.List 
(assert (not (= var1896 null-var3078)))
(declare-const var1478 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var1478 null-String)))
(define-const var1908 var1804 (config/1933598341 var1317)) ; Statement: $r1 = r0.<cn.hutool.core.text.csv.CsvParser: cn.hutool.core.text.csv.CsvReadConfig config> 
(define-const var1527 Int (textDelimiter/1574217128 (cast-from-var1804-to-var792 var1908))) ; Statement: c0 = $r1.<cn.hutool.core.text.csv.CsvReadConfig: char textDelimiter> 
(define-const var234 var1903 var3964_bootstrap$/71134752) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.csv.CsvParser$lambda_addField_0__449: java.util.function.Predicate bootstrap$()>() 
(define-const var3508 String (var2890_trim/1292192406 (cast-from-String-to-String var1478) 1 var234)) ; Statement: r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence,int,java.util.function.Predicate)>(r14, 1, $r2) 
(define-const var1024 String (var2890_unWrap/230064591 (cast-from-String-to-String var3508) var1527)) ; Statement: r16 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String unWrap(java.lang.CharSequence,char)>(r15, c0) 
(define-const var2558 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2558)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2558!1 String)
(assert (= var2558!1 ""))
(assert true)
(define-const var2669 String (append/672562846 var2558!1 "")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var2558!2 String)
(assert (= var2558!2 (str.++ var2558!1 "")))
(assert true)
(define-const var3773 String (append/-1166366385 var2669 var1527)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2669!1 String)
(assert (str.prefixof var2669 var2669!1))
(assert true)
(define-const var773 String (append/-1166366385 var3773 var1527)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var3773!1 String)
(assert (str.prefixof var3773 var3773!1))
(assert true)
(define-const var1550 String (toString/-2075883882 var773)) ; Statement: $r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1360 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1360)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1360!1 String)
(assert (= var1360!1 ""))
(assert true)
(define-const var2262 String (append/-1166366385 var1360!1 var1527)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var1360!2 String)
(assert (str.prefixof var1360!1 var1360!2))
(assert true)
(define-const var1237 String (append/672562846 var2262 "")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var2262!1 String)
(assert (= var2262!1 (str.++ var2262 "")))
(assert true)
(define-const var846 String (toString/-2075883882 var1237)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2646 String (var2890_replace/-799257796 (cast-from-String-to-String var1024) (cast-from-String-to-String var1550) (cast-from-String-to-String var846))) ; Statement: r17 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r16, $r11, $r10) 
(define-const var211 var1804 (config/1933598341 var1317)) ; Statement: $r12 = r0.<cn.hutool.core.text.csv.CsvParser: cn.hutool.core.text.csv.CsvReadConfig config> 
(define-const var2689 Bool (trimField/124469214 var211)) ; Statement: $z0 = $r12.<cn.hutool.core.text.csv.CsvReadConfig: boolean trimField> 
 ; Statement: if $z0 == 0 goto interfaceinvoke r13.<java.util.List: boolean add(java.lang.Object)>(r17) 
(assert (= (ite var2689 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var3078_add/328494887 var1896 (cast-from-String-to-var595 var2646))) ; Statement: interfaceinvoke r13.<java.util.List: boolean add(java.lang.Object)>(r17) 

(declare-const var1896!1 var3078)
(declare-const var2646!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {config/1933598341=([cn.hutool.core.text.csv.CsvParser], cn.hutool.core.text.csv.CsvReadConfig), textDelimiter/1574217128=([cn.hutool.core.text.csv.CsvConfig], char), cast-from-var1804-to-var792=([cn.hutool.core.text.csv.CsvReadConfig], cn.hutool.core.text.csv.CsvConfig), var3964_bootstrap$/71134752=([], java.util.function.Predicate), var2890_trim/1292192406=([java.lang.CharSequence, int, java.util.function.Predicate], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2890_unWrap/230064591=([java.lang.CharSequence, char], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2890_replace/-799257796=([java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), trimField/124469214=([cn.hutool.core.text.csv.CsvReadConfig], boolean), var3078_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var595=([java.lang.String], java.lang.Object)}
; {var2761=cn.hutool.core.text.csv.CsvParser, var1317=r0, var3078=java.util.List, var1896=r13, var1478=r14, var3727=null_type, var1804=cn.hutool.core.text.csv.CsvReadConfig, var1908=$r1, var792=cn.hutool.core.text.csv.CsvConfig, var1527=c0, var1903=java.util.function.Predicate, var3964=cn.hutool.core.text.csv.CsvParser$lambda_addField_0__449, var234=$r2, var2890=cn.hutool.core.text.CharSequenceUtil, var3508=r15, var1024=r16, var2558=$r3, var2669=$r4, var3773=$r5, var773=$r6, var1550=$r11, var1360=$r7, var2262=$r8, var1237=$r9, var846=$r10, var2646=r17, var211=$r12, var2689=$z0, var595=java.lang.Object}
; {cn.hutool.core.text.csv.CsvParser=var2761, r0=var1317, java.util.List=var3078, r13=var1896, r14=var1478, null_type=var3727, cn.hutool.core.text.csv.CsvReadConfig=var1804, $r1=var1908, cn.hutool.core.text.csv.CsvConfig=var792, c0=var1527, java.util.function.Predicate=var1903, cn.hutool.core.text.csv.CsvParser$lambda_addField_0__449=var3964, $r2=var234, cn.hutool.core.text.CharSequenceUtil=var2890, r15=var3508, r16=var1024, $r3=var2558, $r4=var2669, $r5=var3773, $r6=var773, $r11=var1550, $r7=var1360, $r8=var2262, $r9=var1237, $r10=var846, r17=var2646, $r12=var211, $z0=var2689, java.lang.Object=var595}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: cn.hutool.core.text.csv.CsvParser;	r13 := @parameter0: java.util.List;	r14 := @parameter1: java.lang.String;	$r1 = r0.<cn.hutool.core.text.csv.CsvParser: cn.hutool.core.text.csv.CsvReadConfig config>;	c0 = $r1.<cn.hutool.core.text.csv.CsvReadConfig: char textDelimiter>;	$r2 = staticinvoke <cn.hutool.core.text.csv.CsvParser$lambda_addField_0__449: java.util.function.Predicate bootstrap$()>();	r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence,int,java.util.function.Predicate)>(r14, 1, $r2);	r16 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String unWrap(java.lang.CharSequence,char)>(r15, c0);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r17 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(r16, $r11, $r10);	$r12 = r0.<cn.hutool.core.text.csv.CsvParser: cn.hutool.core.text.csv.CsvReadConfig config>;	$z0 = $r12.<cn.hutool.core.text.csv.CsvReadConfig: boolean trimField>;	if $z0 == 0 goto interfaceinvoke r13.<java.util.List: boolean add(java.lang.Object)>(r17);	interfaceinvoke r13.<java.util.List: boolean add(java.lang.Object)>(r17);	return
;block_num 2