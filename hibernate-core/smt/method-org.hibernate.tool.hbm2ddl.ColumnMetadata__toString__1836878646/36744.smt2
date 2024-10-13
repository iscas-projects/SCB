(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1294652650 (var1260) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1260 var1260)
(declare-const var1060 var1260) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.ColumnMetadata 
(assert (not (= var1060 null-var1260)))
(define-const var3495 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3495)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3495!1 String)
(assert (= var3495!1 ""))
(assert true)
(define-const var1557 String (append/672562846 var3495!1 "ColumnMetadata(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ColumnMetadata(") 
(declare-const var3495!2 String)
(assert (= var3495!2 (str.++ var3495!1 "ColumnMetadata(")))
(define-const var2526 String (name/-1294652650 var1060)) ; Statement: $r2 = r1.<org.hibernate.tool.hbm2ddl.ColumnMetadata: java.lang.String name> 
(assert true)
(define-const var601 String (append/672562846 var1557 var2526)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1557!1 String)
(assert (= var1557!1 (str.++ var1557 var2526)))
(assert true)
(define-const var1816 String (append/-1166366385 var601 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var601!1 String)
(assert (str.prefixof var601 var601!1))
(assert true)
(define-const var1007 String (toString/-2075883882 var1816)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1294652650=([org.hibernate.tool.hbm2ddl.ColumnMetadata], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1260=org.hibernate.tool.hbm2ddl.ColumnMetadata, var1060=r1, var3495=$r0, var1557=$r3, var2526=$r2, var601=$r4, var1816=$r5, var1007=$r6}
; {org.hibernate.tool.hbm2ddl.ColumnMetadata=var1260, r1=var1060, $r0=var3495, $r3=var1557, $r2=var2526, $r4=var601, $r5=var1816, $r6=var1007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.ColumnMetadata;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ColumnMetadata(");	$r2 = r1.<org.hibernate.tool.hbm2ddl.ColumnMetadata: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1