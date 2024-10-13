(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2915 0)
(declare-sort var647 0)
(declare-sort var607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun file/1653940871 (var2915) var647)
(declare-fun append/-1031950772 (String var607) String)
(declare-fun cast-from-var647-to-var607 (var647) var607)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2915 var2915)
(declare-const var1131 var2915) ; Statement: r1 := @this: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var1131 null-var2915)))
(define-const var188 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var188)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var188!1 String)
(assert (= var188!1 ""))
(assert true)
(define-const var3492 String (append/672562846 var188!1 "Chunk finished: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Chunk finished: ") 
(declare-const var188!2 String)
(assert (= var188!2 (str.++ var188!1 "Chunk finished: ")))
(define-const var2712 var647 (file/1653940871 var1131)) ; Statement: $r2 = r1.<jdk.jfr.internal.RepositoryChunk: jdk.jfr.internal.SecuritySupport$SafePath file> 
(assert true)
(define-const var3919 String (append/-1031950772 var3492 (cast-from-var647-to-var607 var2712))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3492!1 String)
(assert (str.prefixof var3492 var3492!1))
(assert true)
(define-const var3831 String (toString/-2075883882 var3919)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), file/1653940871=([jdk.jfr.internal.RepositoryChunk], jdk.jfr.internal.SecuritySupport$SafePath), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var647-to-var607=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2915=jdk.jfr.internal.RepositoryChunk, var1131=r1, var188=$r0, var3492=$r3, var647=jdk.jfr.internal.SecuritySupport$SafePath, var2712=$r2, var607=java.lang.Object, var3919=$r4, var3831=$r5}
; {jdk.jfr.internal.RepositoryChunk=var2915, r1=var1131, $r0=var188, $r3=var3492, jdk.jfr.internal.SecuritySupport$SafePath=var647, $r2=var2712, java.lang.Object=var607, $r4=var3919, $r5=var3831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.RepositoryChunk;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Chunk finished: ");	$r2 = r1.<jdk.jfr.internal.RepositoryChunk: jdk.jfr.internal.SecuritySupport$SafePath file>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1