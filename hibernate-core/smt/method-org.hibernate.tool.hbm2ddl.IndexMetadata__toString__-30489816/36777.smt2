(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1608635792 (var2117) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2117 var2117)
(declare-const var869 var2117) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.IndexMetadata 
(assert (not (= var869 null-var2117)))
(define-const var3605 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3605)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3605!1 String)
(assert (= var3605!1 ""))
(assert true)
(define-const var464 String (append/672562846 var3605!1 "IndexMatadata(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IndexMatadata(") 
(declare-const var3605!2 String)
(assert (= var3605!2 (str.++ var3605!1 "IndexMatadata(")))
(define-const var1999 String (name/1608635792 var869)) ; Statement: $r2 = r1.<org.hibernate.tool.hbm2ddl.IndexMetadata: java.lang.String name> 
(assert true)
(define-const var2291 String (append/672562846 var464 var1999)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var464!1 String)
(assert (= var464!1 (str.++ var464 var1999)))
(assert true)
(define-const var527 String (append/-1166366385 var2291 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2291!1 String)
(assert (str.prefixof var2291 var2291!1))
(assert true)
(define-const var2256 String (toString/-2075883882 var527)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1608635792=([org.hibernate.tool.hbm2ddl.IndexMetadata], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2117=org.hibernate.tool.hbm2ddl.IndexMetadata, var869=r1, var3605=$r0, var464=$r3, var1999=$r2, var2291=$r4, var527=$r5, var2256=$r6}
; {org.hibernate.tool.hbm2ddl.IndexMetadata=var2117, r1=var869, $r0=var3605, $r3=var464, $r2=var1999, $r4=var2291, $r5=var527, $r6=var2256}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.IndexMetadata;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IndexMatadata(");	$r2 = r1.<org.hibernate.tool.hbm2ddl.IndexMetadata: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1