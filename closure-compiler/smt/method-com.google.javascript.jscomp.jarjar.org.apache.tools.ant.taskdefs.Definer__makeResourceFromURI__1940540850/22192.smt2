(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var813 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var813 null-String)))
(define-const var1056 String "antlib:") ; Statement: $r1 = "antlib:" 
(assert true)
(define-const var1014 Int (length/-134980193 var1056)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert (and true (and (>= var1014 0) (>= (str.len var813) var1014))))
(define-const var3706 String (substring/850833817 var813 var1014)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0) 
(assert true)
(define-const var2672 Bool (startsWith/-1785782452 var3706 "//")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("//") 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var2672 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3682 String "//") ; Statement: $r7 = "//" 
(assert true)
(define-const var3901 Int (length/-134980193 var3682)) ; Statement: $i1 = virtualinvoke $r7.<java.lang.String: int length()>() 
(assert (and true (and (>= var3901 0) (>= (str.len var3706) var3901))))
(define-const var788 String (substring/850833817 var3706 var3901)) ; Statement: r11 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
(define-const var2912 Bool (endsWith/985337093 var788 ".xml")) ; Statement: $z1 = virtualinvoke r11.<java.lang.String: boolean endsWith(java.lang.String)>(".xml") 
 ; Statement: if $z1 != 0 goto return r11 
(assert (not (= (ite var2912 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var813=r0, var1704=null_type, var1056=$r1, var1014=$i0, var3706=r2, var2672=$z0, var3682=$r7, var3901=$i1, var788=r11, var2912=$z1}
; {r0=var813, null_type=var1704, $r1=var1056, $i0=var1014, r2=var3706, $z0=var2672, $r7=var3682, $i1=var3901, r11=var788, $z1=var2912}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "antlib:";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("//");	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r7 = "//";	$i1 = virtualinvoke $r7.<java.lang.String: int length()>();	r11 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	$z1 = virtualinvoke r11.<java.lang.String: boolean endsWith(java.lang.String)>(".xml");	if $z1 != 0 goto return r11;	return r11
;block_num 3