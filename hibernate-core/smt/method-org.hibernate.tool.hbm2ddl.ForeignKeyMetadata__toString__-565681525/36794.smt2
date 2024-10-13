(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/2133940011 (var2144) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2144 var2144)
(declare-const var82 var2144) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata 
(assert (not (= var82 null-var2144)))
(define-const var3649 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3649)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3649!1 String)
(assert (= var3649!1 ""))
(assert true)
(define-const var1981 String (append/672562846 var3649!1 "ForeignKeyMetadata(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ForeignKeyMetadata(") 
(declare-const var3649!2 String)
(assert (= var3649!2 (str.++ var3649!1 "ForeignKeyMetadata(")))
(define-const var3750 String (name/2133940011 var82)) ; Statement: $r2 = r1.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.lang.String name> 
(assert true)
(define-const var2462 String (append/672562846 var1981 var3750)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1981!1 String)
(assert (= var1981!1 (str.++ var1981 var3750)))
(assert true)
(define-const var473 String (append/-1166366385 var2462 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2462!1 String)
(assert (str.prefixof var2462 var2462!1))
(assert true)
(define-const var2115 String (toString/-2075883882 var473)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/2133940011=([org.hibernate.tool.hbm2ddl.ForeignKeyMetadata], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2144=org.hibernate.tool.hbm2ddl.ForeignKeyMetadata, var82=r1, var3649=$r0, var1981=$r3, var3750=$r2, var2462=$r4, var473=$r5, var2115=$r6}
; {org.hibernate.tool.hbm2ddl.ForeignKeyMetadata=var2144, r1=var82, $r0=var3649, $r3=var1981, $r2=var3750, $r4=var2462, $r5=var473, $r6=var2115}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ForeignKeyMetadata(");	$r2 = r1.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1