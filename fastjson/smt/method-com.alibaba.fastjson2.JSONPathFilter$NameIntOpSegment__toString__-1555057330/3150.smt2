(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2645 0)
(declare-sort var1208 0)
(declare-sort var1755 0)
(declare-sort var2333 0)
(declare-sort var1427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName2/-941001213 (var1208) (Array Int String))
(declare-fun cast-from-var2645-to-var1208 (var2645) var1208)
(declare-fun cast-from-String-to-var1755 (String) var1755)
(declare-fun append/-1031950772 (String var2333) String)
(declare-fun cast-from-var1755-to-var2333 (var1755) var2333)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldName/-941001213 (var1208) String)
(declare-fun operator/673404206 (var2645) var1427)
(declare-fun cast-from-var1427-to-var2333 (var1427) var2333)
(declare-fun value/673404206 (var2645) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2645 var2645)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var95 var2645) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment 
(assert (not (= var95 null-var2645)))
(define-const var218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var218)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var218!1 String)
(assert (= var218!1 ""))
(assert true)
(define-const var77 String (append/672562846 var218!1 "[?(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[?(") 
(declare-const var218!2 String)
(assert (= var218!2 (str.++ var218!1 "[?(")))
(define-const var2274 (Array Int String) (fieldName2/-941001213 (cast-from-var2645-to-var1208 var95))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2> 
 ; Statement: if $r2 != null goto $r15 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2> 
(assert (not (not (= var2274 null-__Array__Int__String__)))) ; Negate: Cond: $r2 != null  
(define-const var1889 var1755 (cast-from-String-to-var1755 "@")) ; Statement: $r15 = "@" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1639 String (append/-1031950772 var77 (cast-from-var1755-to-var2333 var1889))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var77!1 String)
(assert (str.prefixof var77 var77!1))
(assert true)
(define-const var3601 String (append/-1166366385 var1639 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1639!1 String)
(assert (str.prefixof var1639 var1639!1))
(define-const var2370 String (fieldName/-941001213 (cast-from-var2645-to-var1208 var95))) ; Statement: $r5 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String fieldName> 
(assert true)
(define-const var1851 String (append/672562846 var3601 var2370)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3601!1 String)
(assert (= var3601!1 (str.++ var3601 var2370)))
(assert true)
(define-const var1522 String (append/-1166366385 var1851 32)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1851!1 String)
(assert (str.prefixof var1851 var1851!1))
(define-const var1722 var1427 (operator/673404206 var95)) ; Statement: $r8 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator> 
(assert true)
(define-const var2408 String (append/-1031950772 var1522 (cast-from-var1427-to-var2333 var1722))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1522!1 String)
(assert (str.prefixof var1522 var1522!1))
(assert true)
(define-const var3290 String (append/-1166366385 var2408 32)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2408!1 String)
(assert (str.prefixof var2408 var2408!1))
(define-const var1930 Int (value/673404206 var95)) ; Statement: $l0 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: long value> 
(assert true)
(define-const var532 String (append/-901862667 var3290 var1930)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3290!1 String)
(assert (str.prefixof var3290 var3290!1))
(assert true)
(define-const var2283 String (append/672562846 var532 ")]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var532!1 String)
(assert (= var532!1 (str.++ var532 ")]")))
(assert true)
(define-const var828 String (toString/-2075883882 var2283)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName2/-941001213=([com.alibaba.fastjson2.JSONPathFilter$NameFilter], java.lang.String[]), cast-from-var2645-to-var1208=([com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment], com.alibaba.fastjson2.JSONPathFilter$NameFilter), cast-from-String-to-var1755=([java.lang.String], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1755-to-var2333=([java.io.Serializable], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldName/-941001213=([com.alibaba.fastjson2.JSONPathFilter$NameFilter], java.lang.String), operator/673404206=([com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment], com.alibaba.fastjson2.JSONPathFilter$Operator), cast-from-var1427-to-var2333=([com.alibaba.fastjson2.JSONPathFilter$Operator], java.lang.Object), value/673404206=([com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2645=com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment, var95=r1, var218=$r0, var77=$r3, var1208=com.alibaba.fastjson2.JSONPathFilter$NameFilter, var2274=$r2, var1755=java.io.Serializable, var1889=$r15, var2333=java.lang.Object, var1639=$r4, var3601=$r6, var2370=$r5, var1851=$r7, var1522=$r9, var1427=com.alibaba.fastjson2.JSONPathFilter$Operator, var1722=$r8, var2408=$r10, var3290=$r11, var1930=$l0, var532=$r12, var2283=$r13, var828=$r14}
; {com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment=var2645, r1=var95, $r0=var218, $r3=var77, com.alibaba.fastjson2.JSONPathFilter$NameFilter=var1208, $r2=var2274, java.io.Serializable=var1755, $r15=var1889, java.lang.Object=var2333, $r4=var1639, $r6=var3601, $r5=var2370, $r7=var1851, $r9=var1522, com.alibaba.fastjson2.JSONPathFilter$Operator=var1427, $r8=var1722, $r10=var2408, $r11=var3290, $l0=var1930, $r12=var532, $r13=var2283, $r14=var828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[?(");	$r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2>;	if $r2 != null goto $r15 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2>;	$r15 = "@";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String fieldName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$l0 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: long value>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3