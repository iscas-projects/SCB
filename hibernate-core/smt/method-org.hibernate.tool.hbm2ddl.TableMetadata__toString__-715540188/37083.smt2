(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var54 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1096668020 (var54) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var54 var54)
(declare-const var2319 var54) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var2319 null-var54)))
(define-const var802 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var802)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var802!1 String)
(assert (= var802!1 ""))
(assert true)
(define-const var391 String (append/672562846 var802!1 "TableMetadata(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TableMetadata(") 
(declare-const var802!2 String)
(assert (= var802!2 (str.++ var802!1 "TableMetadata(")))
(define-const var1973 String (name/-1096668020 var2319)) ; Statement: $r2 = r1.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> 
(assert true)
(define-const var2098 String (append/672562846 var391 var1973)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var391!1 String)
(assert (= var391!1 (str.++ var391 var1973)))
(assert true)
(define-const var440 String (append/-1166366385 var2098 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2098!1 String)
(assert (str.prefixof var2098 var2098!1))
(assert true)
(define-const var2435 String (toString/-2075883882 var440)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var54=org.hibernate.tool.hbm2ddl.TableMetadata, var2319=r1, var802=$r0, var391=$r3, var1973=$r2, var2098=$r4, var440=$r5, var2435=$r6}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var54, r1=var2319, $r0=var802, $r3=var391, $r2=var1973, $r4=var2098, $r5=var440, $r6=var2435}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TableMetadata(");	$r2 = r1.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1