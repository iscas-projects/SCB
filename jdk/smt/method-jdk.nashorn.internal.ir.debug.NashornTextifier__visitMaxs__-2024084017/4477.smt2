(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3341 0)
(declare-sort var149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addText/1451988652 (var3341 var149) void)
(declare-fun cast-from-String-to-var149 (String) var149)
(declare-const null-var3341 var3341)
(declare-const null-Int Int)
(declare-const var2400 var3341) ; Statement: r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2400 null-var3341)))
(declare-const var2138 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2138 null-Int)))
(declare-const var3082 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3082 null-Int)))
(define-const var2189 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2189)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2189!1 String)
(assert (= var2189!1 ""))
(assert true)
;(assert (append/-1166366385 var2189!1 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2189!2 String)
(assert (str.prefixof var2189!1 var2189!2))
(assert true)
(define-const var156 String (append/672562846 var2189!2 "    ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var2189!3 String)
(assert (= var2189!3 (str.++ var2189!2 "    ")))
(assert true)
(define-const var2253 String (append/672562846 var156 "max stack  = ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max stack  = ") 
(declare-const var156!1 String)
(assert (= var156!1 (str.++ var156 "max stack  = ")))
(assert true)
;(assert (append/-1001720160 var2253 var2138)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2253!1 String)
(assert (str.prefixof var2253 var2253!1))
(assert true)
(define-const var599 String (append/672562846 var2189!3 ", max locals = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", max locals = ") 
(declare-const var2189!4 String)
(assert (= var2189!4 (str.++ var2189!3 ", max locals = ")))
(assert true)
(define-const var837 String (append/-1001720160 var599 var3082)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var599!1 String)
(assert (str.prefixof var599 var599!1))
(assert true)
;(assert (append/-1166366385 var837 10)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var837!1 String)
(assert (str.prefixof var837 var837!1))
(assert true)
(define-const var3303 String (toString/-2075883882 var2189!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addText/1451988652 var2400 (cast-from-String-to-var149 var3303))) ; Statement: specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r6) 

(declare-const var2400!1 var3341)
(declare-const var3303!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var149=([java.lang.String], java.lang.Object)}
; {var3341=jdk.nashorn.internal.ir.debug.NashornTextifier, var2400=r5, var2138=i0, var3082=i1, var2189=$r0, var156=$r1, var2253=$r2, var599=$r3, var837=$r4, var3303=$r6, var149=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3341, r5=var2400, i0=var2138, i1=var3082, $r0=var2189, $r1=var156, $r2=var2253, $r3=var599, $r4=var837, $r6=var3303, java.lang.Object=var149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max stack  = ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", max locals = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r6);	return
;block_num 1