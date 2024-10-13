(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3257 0)
(declare-sort var2084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-2106681294 (var3257) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3257 var3257)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1406 var3257) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var1406 null-var3257)))
(declare-const var1754 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1754 null-String)))
(declare-const var1825 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1825 null-String)))
(declare-const var2152 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2152 null-Bool)))
(define-const var3781 String (buf/-2106681294 var1406)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var3781 34)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3781!1 String)
(assert (str.prefixof var3781 var3781!1))
(define-const var1266 String (buf/-2106681294 var1406)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var1266 var1754)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1266!1 String)
(assert (= var1266!1 (str.++ var1266 var1754)))
(define-const var1687 String (buf/-2106681294 var1406)) ; Statement: $r4 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var1687 "\u0022:")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\":") 
(declare-const var1687!1 String)
(assert (= var1687!1 (str.++ var1687 "\u0022:")))
 ; Statement: if r5 == null goto return 
(assert (= var1825 null-String)) ; Cond: r5 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3257=jdk.nashorn.internal.ir.debug.JSONWriter, var1406=r0, var1754=r2, var2084=null_type, var1825=r5, var2152=z0, var3781=$r1, var1266=$r3, var1687=$r4}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var3257, r0=var1406, r2=var1754, null_type=var2084, r5=var1825, z0=var2152, $r1=var3781, $r3=var1266, $r4=var1687}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r3 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\":");	if r5 == null goto return;	return
;block_num 2