(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLocals/-2047234061 (var667) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getStackSize/-1468688554 (var667) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var667 var667)
(declare-const var175 var667) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.tree.analysis.Frame 
(assert (not (= var175 null-var667)))
(define-const var599 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var599)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var599!1 String)
(assert (= var599!1 ""))
(define-const var2844 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var776 Int (getLocals/-2047234061 var175)) ; Statement: $i0 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int getLocals()>() 
 ; Statement: if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (>= var2844 var776)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/-1166366385 var599!1 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var599!2 String)
(assert (str.prefixof var599!1 var599!2))
(define-const var308 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2154 Int (getStackSize/-1468688554 var175)) ; Statement: $i1 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int getStackSize()>() 
 ; Statement: if i3 >= $i1 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var308 var2154)) ; Cond: i3 >= $i1 
(assert true)
(define-const var1258 String (toString/-2075883882 var599!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLocals/-2047234061=([jdk.internal.org.objectweb.asm.tree.analysis.Frame], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getStackSize/-1468688554=([jdk.internal.org.objectweb.asm.tree.analysis.Frame], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var667=jdk.internal.org.objectweb.asm.tree.analysis.Frame, var175=r1, var599=$r0, var2844=i2, var776=$i0, var308=i3, var2154=$i1, var1258=$r2}
; {jdk.internal.org.objectweb.asm.tree.analysis.Frame=var667, r1=var175, $r0=var599, i2=var2844, $i0=var776, i3=var308, $i1=var2154, $r2=var1258}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.tree.analysis.Frame;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i0 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int getLocals()>();	if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	i3 = 0;	$i1 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int getStackSize()>();	if i3 >= $i1 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 5