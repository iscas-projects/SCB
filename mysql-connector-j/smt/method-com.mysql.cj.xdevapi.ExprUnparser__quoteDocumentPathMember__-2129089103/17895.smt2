(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matches/-643015890 (String String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1428 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1428 null-String)))
(assert true)
(define-const var3430 Bool (matches/-643015890 var1428 "[a-zA-Z0-9_]*")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("[a-zA-Z0-9_]*") 
(assert (= (matches/-643015890 var1428 "[a-zA-Z0-9_]*") (str.in_re var1428 (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_"))))))
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3430 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3660 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3660)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3660!1 String)
(assert (= var3660!1 ""))
(assert true)
(define-const var3677 String (append/672562846 var3660!1 "\u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3660!2 String)
(assert (= var3660!2 (str.++ var3660!1 "\u0022")))
(assert true)
(define-const var3964 String (replaceAll/1692887130 var1428 "\u0022" "\u005c\u005c\u0022")) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\"", "\\\\\"") 
(assert (= (replaceAll/1692887130 var1428 "\u0022" "\u005c\u005c\u0022") (str.replace_re_all var1428 (str.to_re "\u{0022}") "\u005c\u005c\u0022")))
(assert true)
(define-const var3991 String (append/672562846 var3677 var3964)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3677!1 String)
(assert (= var3677!1 (str.++ var3677 var3964)))
(assert true)
(define-const var981 String (append/672562846 var3991 "\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3991!1 String)
(assert (= var3991!1 (str.++ var3991 "\u0022")))
(assert true)
(define-const var118 String (toString/-2075883882 var981)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {matches/-643015890=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1428=r0, var474=null_type, var3430=$z0, var3660=$r1, var3677=$r3, var3964=$r2, var3991=$r4, var981=$r5, var118=$r6}
; {r0=var1428, null_type=var474, $z0=var3430, $r1=var3660, $r3=var3677, $r2=var3964, $r4=var3991, $r5=var981, $r6=var118}
;seq <java.lang.String: boolean matches(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("[a-zA-Z0-9_]*");	if $z0 != 0 goto return r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\"", "\\\\\"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2