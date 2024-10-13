(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun templateName/223838676 (var2012) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun line/223838676 (var2012) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2012 var2012)
(declare-const var3413 var2012) ; Statement: r1 := @this: freemarker.debug.Breakpoint 
(assert (not (= var3413 null-var2012)))
(define-const var566 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var566)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var566!1 String)
(assert (= var566!1 ""))
(define-const var608 String (templateName/223838676 var3413)) ; Statement: $r2 = r1.<freemarker.debug.Breakpoint: java.lang.String templateName> 
(assert true)
(define-const var1792 String (append/672562846 var566!1 var608)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var566!2 String)
(assert (= var566!2 (str.++ var566!1 var608)))
(assert true)
(define-const var1580 String (append/672562846 var1792 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1792!1 String)
(assert (= var1792!1 (str.++ var1792 ":")))
(define-const var2301 Int (line/223838676 var3413)) ; Statement: $i0 = r1.<freemarker.debug.Breakpoint: int line> 
(assert true)
(define-const var2031 String (append/-1001720160 var1580 var2301)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1580!1 String)
(assert (str.prefixof var1580 var1580!1))
(assert true)
(define-const var2462 String (toString/-2075883882 var2031)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), templateName/223838676=([freemarker.debug.Breakpoint], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), line/223838676=([freemarker.debug.Breakpoint], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2012=freemarker.debug.Breakpoint, var3413=r1, var566=$r0, var608=$r2, var1792=$r3, var1580=$r4, var2301=$i0, var2031=$r5, var2462=$r6}
; {freemarker.debug.Breakpoint=var2012, r1=var3413, $r0=var566, $r2=var608, $r3=var1792, $r4=var1580, $i0=var2301, $r5=var2031, $r6=var2462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.debug.Breakpoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.debug.Breakpoint: java.lang.String templateName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r1.<freemarker.debug.Breakpoint: int line>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1