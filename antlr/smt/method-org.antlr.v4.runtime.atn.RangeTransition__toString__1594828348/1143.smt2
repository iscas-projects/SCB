(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun from/-103607388 (var3987) Int)
(declare-fun appendCodePoint/-693552229 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun to/-103607388 (var3987) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3987 var3987)
(declare-const var1296 var3987) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.RangeTransition 
(assert (not (= var1296 null-var3987)))
(define-const var606 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var606 "\u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var606!1 String)
(assert (= var606!1 "\u0027"))
(define-const var1249 Int (from/-103607388 var1296)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.RangeTransition: int 'from'> 
(assert true)
(define-const var2433 String (appendCodePoint/-693552229 var606!1 var1249)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0) 
(assert true)
(define-const var467 String (append/672562846 var2433 "\u0027..\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'..\'") 
(declare-const var2433!1 String)
(assert (= var2433!1 (str.++ var2433 "\u0027..\u0027")))
(define-const var1786 Int (to/-103607388 var1296)) ; Statement: $i1 = r1.<org.antlr.v4.runtime.atn.RangeTransition: int 'to'> 
(assert true)
(define-const var1229 String (appendCodePoint/-693552229 var467 var1786)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1) 
(assert true)
(define-const var1224 String (append/672562846 var1229 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1229!1 String)
(assert (= var1229!1 (str.++ var1229 "\u0027")))
(assert true)
(define-const var1075 String (toString/-2075883882 var1224)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), from/-103607388=([org.antlr.v4.runtime.atn.RangeTransition], int), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), to/-103607388=([org.antlr.v4.runtime.atn.RangeTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3987=org.antlr.v4.runtime.atn.RangeTransition, var1296=r1, var606=$r0, var1249=$i0, var2433=$r2, var467=$r3, var1786=$i1, var1229=$r4, var1224=$r5, var1075=$r6}
; {org.antlr.v4.runtime.atn.RangeTransition=var3987, r1=var1296, $r0=var606, $i0=var1249, $r2=var2433, $r3=var467, $i1=var1786, $r4=var1229, $r5=var1224, $r6=var1075}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.RangeTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$i0 = r1.<org.antlr.v4.runtime.atn.RangeTransition: int 'from'>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'..\'");	$i1 = r1.<org.antlr.v4.runtime.atn.RangeTransition: int 'to'>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1