(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2883 0)
(declare-sort var2920 0)
(declare-sort var1191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matches/-643015890 (String String) Bool)
(declare-fun var1191-init () var1191)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1191 String) void)
(declare-const null-String String)
(declare-const null-var2920 var2920)
(declare-const var2462 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2462 null-String)))
(declare-const var2107 var2920) ; Statement: r1 := @parameter1: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth 
(assert (not (= var2107 null-var2920)))
(assert true)
(define-const var616 Bool (matches/-643015890 var2462 "auto|[0-9]+|[0-9]+(\u005c.[0-9]+)?%")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("auto|[0-9]+|[0-9]+(\\.[0-9]+)?%") 
(assert (= (matches/-643015890 var2462 "auto|[0-9]+|[0-9]+(\u005c.[0-9]+)?%") (str.in_re var2462 (re.union (str.to_re "auto") (re.+ (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "%"))))))
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("auto") 
(assert (not (not (= (ite var616 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3397 var1191 var1191-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(define-const var1242 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1242)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1242!1 String)
(assert (= var1242!1 ""))
(assert true)
(define-const var1420 String (append/672562846 var1242!1 "Table width value \u0022")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table width value \"") 
(declare-const var1242!2 String)
(assert (= var1242!2 (str.++ var1242!1 "Table width value \u0022")))
(assert true)
(define-const var1887 String (append/672562846 var1420 var2462)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1420!1 String)
(assert (= var1420!1 (str.++ var1420 var2462)))
(assert true)
(define-const var1826 String (append/672562846 var1887 "\u0022 must match regular expression \u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" must match regular expression \"") 
(declare-const var1887!1 String)
(assert (= var1887!1 (str.++ var1887 "\u0022 must match regular expression \u0022")))
(assert true)
(define-const var1678 String (append/672562846 var1826 "auto|[0-9]+|[0-9]+(\u005c.[0-9]+)?%")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("auto|[0-9]+|[0-9]+(\\.[0-9]+)?%") 
(declare-const var1826!1 String)
(assert (= var1826!1 (str.++ var1826 "auto|[0-9]+|[0-9]+(\u005c.[0-9]+)?%")))
(assert true)
(define-const var490 String (append/672562846 var1678 "\u0022.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var1678!1 String)
(assert (= var1678!1 (str.++ var1678 "\u0022.")))
(assert true)
(define-const var2925 String (toString/-2075883882 var490)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3397 var2925)) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13) 

(declare-const var3397!1 var1191)
(declare-const var2925!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {matches/-643015890=([java.lang.String, java.lang.String], boolean), var1191-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2462=r0, var2883=null_type, var2920=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth, var2107=r1, var616=$z0, var1191=java.lang.IllegalStateException, var3397=$r6, var1242=$r7, var1420=$r8, var1887=$r9, var1826=$r10, var1678=$r11, var490=$r12, var2925=$r13}
; {r0=var2462, null_type=var2883, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth=var2920, r1=var2107, $z0=var616, java.lang.IllegalStateException=var1191, $r6=var3397, $r7=var1242, $r8=var1420, $r9=var1887, $r10=var1826, $r11=var1678, $r12=var490, $r13=var2925}
;seq <java.lang.String: boolean matches(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;	$z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("auto|[0-9]+|[0-9]+(\\.[0-9]+)?%");	if $z0 != 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("auto");	$r6 = new java.lang.IllegalStateException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table width value \"");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" must match regular expression \"");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("auto|[0-9]+|[0-9]+(\\.[0-9]+)?%");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13);	throw $r6
;block_num 2