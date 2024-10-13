(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2385 0)
(declare-sort var2305 0)
(declare-sort var338 0)
(declare-sort var3471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-10557480 (var338) var2305)
(declare-fun cast-from-var2385-to-var338 (var2385) var338)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun tab2/-788090934 (var2385) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2305_add/328494887 (var2305 var3471) Bool)
(declare-fun cast-from-String-to-var3471 (String) var3471)
(declare-fun createTextifier/-1341636553 (var2385) var2385)
(declare-fun getText/-142638630 (var338) var2305)
(declare-fun cast-from-var2305-to-var3471 (var2305) var3471)
(declare-const null-var2385 var2385)
(declare-const var2924 var2385) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2924 null-var2385)))
(define-const var1294 var2305 (text/-10557480 (cast-from-var2385-to-var338 var2924))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var175 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var175)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var175!1 String)
(assert (= var175!1 ""))
(define-const var2628 String (tab2/-788090934 var2924)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2493 String (append/672562846 var175!1 var2628)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var175!2 String)
(assert (= var175!2 (str.++ var175!1 var2628)))
(assert true)
(define-const var236 String (append/672562846 var2493 "default=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default=") 
(declare-const var2493!1 String)
(assert (= var2493!1 (str.++ var2493 "default=")))
(assert true)
(define-const var3800 String (toString/-2075883882 var236)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2305_add/328494887 var1294 (cast-from-String-to-var3471 var3800))) ; Statement: interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var1294!1 var2305)
(declare-const var3800!1 String)
(assert true)
(define-const var64 var2385 (createTextifier/-1341636553 var2924)) ; Statement: r7 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var1311 var2305 (text/-10557480 (cast-from-var2385-to-var338 var2924))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var2093 var2305 (getText/-142638630 (cast-from-var2385-to-var338 var64))) ; Statement: $r9 = virtualinvoke r7.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var2305_add/328494887 var1311 (cast-from-var2305-to-var3471 var2093))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var1311!1 var2305)
(declare-const var2093!1 var2305)
(define-const var953 var2305 (text/-10557480 (cast-from-var2385-to-var338 var2924))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
;(assert (var2305_add/328494887 var953 (cast-from-String-to-var3471 "\n"))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("\n") 

(declare-const var953!1 var2305)
(declare-const var1641 String)
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var2385-to-var338=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2305_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3471=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var2305-to-var3471=([java.util.List], java.lang.Object)}
; {var2385=jdk.internal.org.objectweb.asm.util.Textifier, var2924=r0, var2305=java.util.List, var338=jdk.internal.org.objectweb.asm.util.Printer, var1294=$r2, var175=$r1, var2628=$r3, var2493=$r4, var236=$r5, var3800=$r6, var3471=java.lang.Object, var64=r7, var1311=$r8, var2093=$r9, var953=$r10, var1641="\n"}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2385, r0=var2924, java.util.List=var2305, jdk.internal.org.objectweb.asm.util.Printer=var338, $r2=var1294, $r1=var175, $r3=var2628, $r4=var2493, $r5=var236, $r6=var3800, java.lang.Object=var3471, r7=var64, $r8=var1311, $r9=var2093, $r10=var953, "\n"=var1641}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r6);	r7 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r9 = virtualinvoke r7.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("\n");	return r7
;block_num 1