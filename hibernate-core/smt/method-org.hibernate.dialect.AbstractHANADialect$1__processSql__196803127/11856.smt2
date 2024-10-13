(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1755 0)
(declare-sort var2744 0)
(declare-sort var2858 0)
(declare-sort var638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var638_hasFirstRow/-2097898482 (var2858) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1755 var1755)
(declare-const null-String String)
(declare-const null-var2858 var2858)
(declare-const var1129 var1755) ; Statement: r6 := @this: org.hibernate.dialect.AbstractHANADialect$1 
(assert (not (= var1129 null-var1755)))
(declare-const var3730 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3730 null-String)))
(declare-const var2188 var2858) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2188 null-var2858)))
(define-const var3956 Bool (var638_hasFirstRow/-2097898482 var2188)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var2842 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2842)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2842!1 String)
(assert (= var2842!1 ""))
(assert true)
(define-const var3898 String (append/672562846 var2842!1 var3730)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2842!2 String)
(assert (= var2842!2 (str.++ var2842!1 var3730)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (not (= (ite var3956 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2503 String " limit ? offset ?") ; Statement: $r7 = " limit ? offset ?" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var668 String (append/672562846 var3898 var2503)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3898!1 String)
(assert (= var3898!1 (str.++ var3898 var2503)))
(assert true)
(define-const var3907 String (toString/-2075883882 var668)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var638_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1755=org.hibernate.dialect.AbstractHANADialect$1, var1129=r6, var3730=r2, var2744=null_type, var2858=org.hibernate.engine.spi.RowSelection, var2188=r0, var638=org.hibernate.dialect.pagination.LimitHelper, var3956=z0, var2842=$r1, var3898=$r3, var2503=$r7, var668=$r4, var3907=$r5}
; {org.hibernate.dialect.AbstractHANADialect$1=var1755, r6=var1129, r2=var3730, null_type=var2744, org.hibernate.engine.spi.RowSelection=var2858, r0=var2188, org.hibernate.dialect.pagination.LimitHelper=var638, z0=var3956, $r1=var2842, $r3=var3898, $r7=var2503, $r4=var668, $r5=var3907}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.AbstractHANADialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ? offset ?";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3