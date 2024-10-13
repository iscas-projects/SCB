(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3645 0)
(declare-sort var630 0)
(declare-sort var1139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addText/1451988652 (var3645 var1139) void)
(declare-fun cast-from-String-to-var1139 (String) var1139)
(declare-const null-var3645 var3645)
(declare-const null-Int Int)
(declare-const null-var630 var630)
(declare-const var177 var3645) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var177 null-var3645)))
(declare-const var3646 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3646 null-Int)))
(declare-const var3722 var630) ; Statement: r3 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3722 null-var630)))
(define-const var3511 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3511)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3511!1 String)
(assert (= var3511!1 ""))
(assert true)
;(assert (append/672562846 var3511!1 "<line ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<line ") 
(declare-const var3511!2 String)
(assert (= var3511!2 (str.++ var3511!1 "<line ")))
(assert true)
;(assert (append/-1001720160 var3511!2 var3646)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3511!3 String)
(assert (str.prefixof var3511!2 var3511!3))
(assert true)
;(assert (append/672562846 var3511!3 ">\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">\n") 
(declare-const var3511!4 String)
(assert (= var3511!4 (str.++ var3511!3 ">\n")))
(assert true)
(define-const var1212 String (toString/-2075883882 var3511!4)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addText/1451988652 var177 (cast-from-String-to-var1139 var1212))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r2) 

(declare-const var177!1 var3645)
(declare-const var1212!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var1139=([java.lang.String], java.lang.Object)}
; {var3645=jdk.nashorn.internal.ir.debug.NashornTextifier, var177=r1, var3646=i0, var630=jdk.internal.org.objectweb.asm.Label, var3722=r3, var3511=$r0, var1212=$r2, var1139=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3645, r1=var177, i0=var3646, jdk.internal.org.objectweb.asm.Label=var630, r3=var3722, $r0=var3511, $r2=var1212, java.lang.Object=var1139}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r3 := @parameter1: jdk.internal.org.objectweb.asm.Label;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<line ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">\n");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r2);	return
;block_num 1