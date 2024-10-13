(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort var3107 0)
(declare-sort var1159 0)
(declare-sort var1876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-10557480 (var1159) var3107)
(declare-fun cast-from-var2638-to-var1159 (var2638) var1159)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1045876480 (var2638) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3107_add/328494887 (var3107 var1876) Bool)
(declare-fun cast-from-String-to-var1876 (String) var1876)
(declare-const null-var2638 var2638)
(declare-const var2112 var2638) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2112 null-var2638)))
(define-const var2435 var3107 (text/-10557480 (cast-from-var2638-to-var1159 var2112))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3803 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3803)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3803!1 String)
(assert (= var3803!1 ""))
(define-const var3227 String (name/1045876480 var2112)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var3833 String (append/672562846 var3803!1 var3227)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3803!2 String)
(assert (= var3803!2 (str.++ var3803!1 var3227)))
(assert true)
(define-const var898 String (append/672562846 var3833 ".visitCode();\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".visitCode();\n") 
(declare-const var3833!1 String)
(assert (= var3833!1 (str.++ var3833 ".visitCode();\n")))
(assert true)
(define-const var63 String (toString/-2075883882 var898)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3107_add/328494887 var2435 (cast-from-String-to-var1876 var63))) ; Statement: interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var2435!1 var3107)
(declare-const var63!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var2638-to-var1159=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3107_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1876=([java.lang.String], java.lang.Object)}
; {var2638=jdk.internal.org.objectweb.asm.util.ASMifier, var2112=r0, var3107=java.util.List, var1159=jdk.internal.org.objectweb.asm.util.Printer, var2435=$r2, var3803=$r1, var3227=$r3, var3833=$r4, var898=$r5, var63=$r6, var1876=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2638, r0=var2112, java.util.List=var3107, jdk.internal.org.objectweb.asm.util.Printer=var1159, $r2=var2435, $r1=var3803, $r3=var3227, $r4=var3833, $r5=var898, $r6=var63, java.lang.Object=var1876}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".visitCode();\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r6);	return
;block_num 1