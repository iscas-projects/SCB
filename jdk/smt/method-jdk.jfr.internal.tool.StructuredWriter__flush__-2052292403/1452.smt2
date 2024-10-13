(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2849 0)
(declare-sort var327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-917033666 (var2849) var327)
(declare-fun builder/-917033666 (var2849) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var327 String) void)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-var2849 var2849)
(declare-const null-Bool Bool)
(declare-const var2534 var2849) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var2534 null-var2849)))
(declare-const var3163 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3163 null-Bool)))
 ; Statement: if z0 == 0 goto $z1 = r0.<jdk.jfr.internal.tool.StructuredWriter: boolean first> 
(assert (not (= (ite var3163 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var883 var327 (out/-917033666 var2534)) ; Statement: $r7 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.io.PrintWriter out> 
(define-const var625 String (builder/-917033666 var2534)) ; Statement: $r6 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> 
(assert true)
(define-const var369 String (toString/-2075883882 var625)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var883 var369)) ; Statement: virtualinvoke $r7.<java.io.PrintWriter: void print(java.lang.String)>($r8) 

(declare-const var883!1 var327)
(declare-const var369!1 String)
(define-const var1961 String (builder/-917033666 var2534)) ; Statement: $r9 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> 
(assert true)
;(assert (setLength/1276735992 var1961 0)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var1961!1 String)
(declare-const var1513 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.io.PrintWriter), builder/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var2849=jdk.jfr.internal.tool.StructuredWriter, var2534=r0, var3163=z0, var327=java.io.PrintWriter, var883=$r7, var625=$r6, var369=$r8, var1961=$r9, var1513=0}
; {jdk.jfr.internal.tool.StructuredWriter=var2849, r0=var2534, z0=var3163, java.io.PrintWriter=var327, $r7=var883, $r6=var625, $r8=var369, $r9=var1961, 0=var1513}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	z0 := @parameter0: boolean;	if z0 == 0 goto $z1 = r0.<jdk.jfr.internal.tool.StructuredWriter: boolean first>;	$r7 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.io.PrintWriter out>;	$r6 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder>;	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<java.io.PrintWriter: void print(java.lang.String)>($r8);	$r9 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder>;	virtualinvoke $r9.<java.lang.StringBuilder: void setLength(int)>(0);	return
;block_num 2