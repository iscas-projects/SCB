(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2429 0)
(declare-sort var1160 0)
(declare-sort var1757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun usedOffsetFetch/1166245369 (var2429) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOffsetFetch/-1192315432 (var2429 var1160) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2429 var2429)
(declare-const null-var1160 var1160)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3805 var2429) ; Statement: r0 := @this: org.hibernate.dialect.pagination.SQLServer2012LimitHandler 
(assert (not (= var3805 null-var2429)))
(declare-const var3789 var1160) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3789 null-var1160)))
(declare-const var3460 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3460 null-String)))
(declare-const var943 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var943 null-Int)))
(declare-const var3805!1 var2429)
(assert (not (= var3805!1 null-var2429)))
(assert (= (usedOffsetFetch/1166245369 var3805!1) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.SQLServer2012LimitHandler: boolean usedOffsetFetch> = 1 
(define-const var352 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var352)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var352!1 String)
(assert (= var352!1 ""))
(assert (and true (and (>= 0 0) (>= (str.len var3460) var943) (>= var943 0))))
(define-const var3730 String (substring/-1240304868 var3460 0 var943)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
;(assert (append/672562846 var352!1 var3730)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var352!2 String)
(assert (= var352!2 (str.++ var352!1 var3730)))
(assert true)
(define-const var830 String (getOffsetFetch/-1192315432 var3805!1 var3789)) ; Statement: $r5 = specialinvoke r0.<org.hibernate.dialect.pagination.SQLServer2012LimitHandler: java.lang.String getOffsetFetch(org.hibernate.engine.spi.RowSelection)>(r4) 
(assert true)
;(assert (append/672562846 var352!2 var830)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var352!3 String)
(assert (= var352!3 (str.++ var352!2 var830)))
(assert true)
(define-const var1812 Int (length/-134980193 var3460)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i0 <= $i1 goto $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var943 var1812)) ; Cond: i0 <= $i1 
(assert true)
(define-const var1008 String (toString/-2075883882 var352!3)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {usedOffsetFetch/1166245369=([org.hibernate.dialect.pagination.SQLServer2012LimitHandler], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOffsetFetch/-1192315432=([org.hibernate.dialect.pagination.SQLServer2012LimitHandler, org.hibernate.engine.spi.RowSelection], java.lang.String), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2429=org.hibernate.dialect.pagination.SQLServer2012LimitHandler, var3805=r0, var1160=org.hibernate.engine.spi.RowSelection, var3789=r4, var3460=r2, var1757=null_type, var943=i0, var352=$r1, var3730=$r3, var830=$r5, var1812=$i1, var1008=$r6}
; {org.hibernate.dialect.pagination.SQLServer2012LimitHandler=var2429, r0=var3805, org.hibernate.engine.spi.RowSelection=var1160, r4=var3789, r2=var3460, null_type=var1757, i0=var943, $r1=var352, $r3=var3730, $r5=var830, $i1=var1812, $r6=var1008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.pagination.SQLServer2012LimitHandler;	r4 := @parameter0: org.hibernate.engine.spi.RowSelection;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r0.<org.hibernate.dialect.pagination.SQLServer2012LimitHandler: boolean usedOffsetFetch> = 1;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = specialinvoke r0.<org.hibernate.dialect.pagination.SQLServer2012LimitHandler: java.lang.String getOffsetFetch(org.hibernate.engine.spi.RowSelection)>(r4);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	if i0 <= $i1 goto $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2