(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2540 0)
(declare-sort var1748 0)
(declare-sort var1252 0)
(declare-sort var1315 0)
(declare-sort var2139 0)
(declare-sort var1141 0)
(declare-sort var248 0)
(declare-sort var2645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBegining/489908244 (var1252) Int)
(declare-fun size/1292965855 (var1315) Int)
(declare-fun cast-from-var1252-to-var1315 (var1252) var1315)
(declare-fun var2139_max/1360571700 (Int Int) Int)
(declare-fun arr-var1141-init () (Array Int var1141))
(declare-fun getLength-Arr-var1141-1 ((Array Int var1141)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var248-init () var248)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1715599638 (var248 var2645 String) void)
(declare-fun cast-from-var2540-to-var2645 (var2540) var2645)
(declare-const null-var2540 var2540)
(declare-const null-var1748 var1748)
(declare-const null-var1252 var1252)
(declare-const null-Int Int)
(declare-const var878 var2540) ; Statement: r6 := @this: freemarker.core.DynamicKeyName 
(assert (not (= var878 null-var2540)))
(declare-const var243 var1748) ; Statement: r14 := @parameter0: freemarker.template.TemplateModelIterator 
(assert (not (= var243 null-var1748)))
(declare-const var3816 var1252) ; Statement: r0 := @parameter1: freemarker.core.RangeModel 
(assert (not (= var3816 null-var1252)))
(declare-const var2239 Int) ; Statement: i9 := @parameter2: int 
(assert (not (= var2239 null-Int)))
(assert true)
(define-const var244 Int (getBegining/489908244 var3816)) ; Statement: i0 = virtualinvoke r0.<freemarker.core.RangeModel: int getBegining()>() 
(assert true)
(define-const var1074 Int (size/1292965855 (cast-from-var1252-to-var1315 var3816))) ; Statement: $i1 = virtualinvoke r0.<freemarker.core.RangeModel: int size()>() 
(define-const var1893 Int (- var1074 1)) ; Statement: $i2 = $i1 - 1 
(define-const var1600 Int (- var244 var1893)) ; Statement: $i3 = i0 - $i2 
(define-const var1946 Int (var2139_max/1360571700 var1600 0)) ; Statement: i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, 0) 
(define-const var2713 Int (- var244 var1946)) ; Statement: $i5 = i0 - i4 
(define-const var1968 Int (+ var2713 1)) ; Statement: $i6 = $i5 + 1 
(define-const var1321 (Array Int var1141) arr-var1141-init) ; Statement: r1 = newarray (freemarker.template.TemplateModel)[$i6] 
(define-const var2590 Int 0) ; Statement: i10 = 0 
(define-const var693 Int (getLength-Arr-var1141-1 var1321)) ; Statement: $i7 = lengthof r1 
(define-const var3735 Int (- var693 1)) ; Statement: i11 = $i7 - 1 
(assert true) ; Non Conditional
 ; Statement: if i10 > i0 goto $i15 = (int) -1 
(assert (> var2590 var244)) ; Cond: i10 > i0 
(define-const var3231 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if i11 == $i15 goto $r18 = new freemarker.template.SimpleSequence 
(assert (not (= var3735 var3231))) ; Negate: Cond: i11 == $i15  
(define-const var1342 var248 var248-init) ; Statement: $r17 = new freemarker.core._MiscTemplateException 
(define-const var3805 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3805)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3805!1 String)
(assert (= var3805!1 ""))
(assert true)
(define-const var2057 String (append/672562846 var3805!1 "Range top index ")) ; Statement: $r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Range top index ") 
(declare-const var3805!2 String)
(assert (= var3805!2 (str.++ var3805!1 "Range top index ")))
(assert true)
(define-const var2628 String (append/-1001720160 var2057 var244)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2057!1 String)
(assert (str.prefixof var2057 var2057!1))
(assert true)
(define-const var3875 String (append/672562846 var2628 " (0-based) is outside the sliced sequence of length ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0-based) is outside the sliced sequence of length ") 
(declare-const var2628!1 String)
(assert (= var2628!1 (str.++ var2628 " (0-based) is outside the sliced sequence of length ")))
(assert true)
(define-const var1081 String (append/-1001720160 var3875 var2590)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i10) 
(declare-const var3875!1 String)
(assert (str.prefixof var3875 var3875!1))
(assert true)
(define-const var3248 String (append/672562846 var1081 ".")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1081!1 String)
(assert (= var1081!1 (str.++ var1081 ".")))
(assert true)
(define-const var55 String (toString/-2075883882 var3248)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1715599638 var1342 (cast-from-var2540-to-var2645 var878) var55)) ; Statement: specialinvoke $r17.<freemarker.core._MiscTemplateException: void <init>(freemarker.core.Expression,java.lang.String)>(r6, $r13) 

(declare-const var1342!1 var248)
(declare-const var878!1 var2540)
(declare-const var55!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getBegining/489908244=([freemarker.core.RangeModel], int), size/1292965855=([freemarker.template.TemplateSequenceModel], int), cast-from-var1252-to-var1315=([freemarker.core.RangeModel], freemarker.template.TemplateSequenceModel), var2139_max/1360571700=([int, int], int), arr-var1141-init=([], freemarker.template.TemplateModel[]), getLength-Arr-var1141-1=([freemarker.template.TemplateModel[]], int), cast-from-Int-to-Int=([int], int), var248-init=([], freemarker.core._MiscTemplateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1715599638=([freemarker.core._MiscTemplateException, freemarker.core.Expression, java.lang.String], void), cast-from-var2540-to-var2645=([freemarker.core.DynamicKeyName], freemarker.core.Expression)}
; {var2540=freemarker.core.DynamicKeyName, var878=r6, var1748=freemarker.template.TemplateModelIterator, var243=r14, var1252=freemarker.core.RangeModel, var3816=r0, var2239=i9, var244=i0, var1315=freemarker.template.TemplateSequenceModel, var1074=$i1, var1893=$i2, var1600=$i3, var2139=java.lang.Math, var1946=i4, var2713=$i5, var1968=$i6, var1141=freemarker.template.TemplateModel, var1321=r1, var2590=i10, var693=$i7, var3735=i11, var3231=$i15, var248=freemarker.core._MiscTemplateException, var1342=$r17, var3805=$r16, var2057=$r8, var2628=$r9, var3875=$r10, var1081=$r11, var3248=$r12, var55=$r13, var2645=freemarker.core.Expression}
; {freemarker.core.DynamicKeyName=var2540, r6=var878, freemarker.template.TemplateModelIterator=var1748, r14=var243, freemarker.core.RangeModel=var1252, r0=var3816, i9=var2239, i0=var244, freemarker.template.TemplateSequenceModel=var1315, $i1=var1074, $i2=var1893, $i3=var1600, java.lang.Math=var2139, i4=var1946, $i5=var2713, $i6=var1968, freemarker.template.TemplateModel=var1141, r1=var1321, i10=var2590, $i7=var693, i11=var3735, $i15=var3231, freemarker.core._MiscTemplateException=var248, $r17=var1342, $r16=var3805, $r8=var2057, $r9=var2628, $r10=var3875, $r11=var1081, $r12=var3248, $r13=var55, freemarker.core.Expression=var2645}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.core.DynamicKeyName;	r14 := @parameter0: freemarker.template.TemplateModelIterator;	r0 := @parameter1: freemarker.core.RangeModel;	i9 := @parameter2: int;	i0 = virtualinvoke r0.<freemarker.core.RangeModel: int getBegining()>();	$i1 = virtualinvoke r0.<freemarker.core.RangeModel: int size()>();	$i2 = $i1 - 1;	$i3 = i0 - $i2;	i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, 0);	$i5 = i0 - i4;	$i6 = $i5 + 1;	r1 = newarray (freemarker.template.TemplateModel)[$i6];	i10 = 0;	$i7 = lengthof r1;	i11 = $i7 - 1;	if i10 > i0 goto $i15 = (int) -1;	$i15 = (int) -1;	if i11 == $i15 goto $r18 = new freemarker.template.SimpleSequence;	$r17 = new freemarker.core._MiscTemplateException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Range top index ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0-based) is outside the sliced sequence of length ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<freemarker.core._MiscTemplateException: void <init>(freemarker.core.Expression,java.lang.String)>(r6, $r13);	throw $r17
;block_num 4