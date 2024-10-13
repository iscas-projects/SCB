(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var300 0)
(declare-sort var3015 0)
(declare-sort var2259 0)
(declare-sort var3299 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3299) String)
(declare-fun cast-from-var300-to-var3299 (var300) var3299)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun valueNumber/-788090934 (var300) Int)
(declare-fun appendComa/-337716018 (var300 Int) void)
(declare-fun cast-from-var2259-to-String (var2259) String)
(declare-fun visitString/-1940639586 (var300 String) void)
(declare-fun text/-10557480 (var3299) var3974)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3974_add/328494887 (var3974 var2259) Bool)
(declare-fun cast-from-String-to-var2259 (String) var2259)
(declare-const null-var300 var300)
(declare-const null-String String)
(declare-const null-var2259 var2259)
(declare-const var494 var300) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var494 null-var300)))
(declare-const var1853 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1853 null-String)))
(declare-const var3831 var2259) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3831 null-var2259)))
(define-const var137 String (buf/-10557480 (cast-from-var300-to-var3299 var494))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var137 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var137!1 String)
(declare-const var3828 Int)
(define-const var1765 Int (valueNumber/-788090934 var494)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> 
(define-const var1108 Int (+ var1765 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var494!1 var300)
(assert (not (= var494!1 null-var300)))
(assert (= (valueNumber/-788090934 var494!1) var1108)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1 
(assert true)
;(assert (appendComa/-337716018 var494!1 var1765)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0) 

(declare-const var494!2 var300)
(declare-const var1765!1 Int)
 ; Statement: if r2 == null goto $z0 = r3 instanceof java.lang.String 
(assert (= var1853 null-String)) ; Cond: r2 == null 
(define-const var3759 Bool false) ; Statement: $z0 = r3 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r3 instanceof jdk.internal.org.objectweb.asm.Type 
(assert (not (= (ite var3759 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2452 String (cast-from-var2259-to-String var3831)) ; Statement: $r23 = (java.lang.String) r3 
(assert true)
;(assert (visitString/-1940639586 var494!2 var2452)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void visitString(java.lang.String)>($r23) 

(declare-const var494!3 var300)
(declare-const var2452!1 String)
 ; Statement: goto [?= $r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>] 
(assert true) ; Non Conditional
(define-const var706 var3974 (text/-10557480 (cast-from-var300-to-var3299 var494!3))) ; Statement: $r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1285 String (buf/-10557480 (cast-from-var300-to-var3299 var494!3))) ; Statement: $r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1944 String (toString/-222306083 var1285)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3974_add/328494887 var706 (cast-from-String-to-var2259 var1944))) ; Statement: interfaceinvoke $r35.<java.util.List: boolean add(java.lang.Object)>($r37) 

(declare-const var706!1 var3974)
(declare-const var1944!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var300-to-var3299=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), valueNumber/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], int), appendComa/-337716018=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), cast-from-var2259-to-String=([java.lang.Object], java.lang.String), visitString/-1940639586=([jdk.internal.org.objectweb.asm.util.Textifier, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3974_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2259=([java.lang.String], java.lang.Object)}
; {var300=jdk.internal.org.objectweb.asm.util.Textifier, var494=r0, var1853=r2, var3015=null_type, var2259=java.lang.Object, var3831=r3, var3299=jdk.internal.org.objectweb.asm.util.Printer, var137=$r1, var3828=0, var1765=$i0, var1108=$i1, var3759=$z0, var2452=$r23, var3974=java.util.List, var706=$r35, var1285=$r36, var1944=$r37}
; {jdk.internal.org.objectweb.asm.util.Textifier=var300, r0=var494, r2=var1853, null_type=var3015, java.lang.Object=var2259, r3=var3831, jdk.internal.org.objectweb.asm.util.Printer=var3299, $r1=var137, 0=var3828, $i0=var1765, $i1=var1108, $z0=var3759, $r23=var2452, java.util.List=var3974, $r35=var706, $r36=var1285, $r37=var1944}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber>;	$i1 = $i0 + 1;	r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0);	if r2 == null goto $z0 = r3 instanceof java.lang.String;	$z0 = r3 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r3 instanceof jdk.internal.org.objectweb.asm.Type;	$r23 = (java.lang.String) r3;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void visitString(java.lang.String)>($r23);	goto [?= $r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>];	$r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r37 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r35.<java.util.List: boolean add(java.lang.Object)>($r37);	return
;block_num 4