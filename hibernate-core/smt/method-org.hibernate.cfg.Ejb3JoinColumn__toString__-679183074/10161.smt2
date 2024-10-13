(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2873 0)
(declare-sort var182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLogicalColumnName/-952276084 (var182) String)
(declare-fun cast-from-var2873-to-var182 (var2873) var182)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun referencedColumn/1693074950 (var2873) String)
(declare-fun mappedBy/1693074950 (var2873) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2873 var2873)
(declare-const var2520 var2873) ; Statement: r1 := @this: org.hibernate.cfg.Ejb3JoinColumn 
(assert (not (= var2520 null-var2873)))
(define-const var709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var709!1 String)
(assert (= var709!1 ""))
(assert true)
;(assert (append/672562846 var709!1 "Ejb3JoinColumn")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ejb3JoinColumn") 
(declare-const var709!2 String)
(assert (= var709!2 (str.++ var709!1 "Ejb3JoinColumn")))
(assert true)
(define-const var3994 String (append/672562846 var709!2 "{logicalColumnName=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{logicalColumnName=\'") 
(declare-const var709!3 String)
(assert (= var709!3 (str.++ var709!2 "{logicalColumnName=\u0027")))
(assert true)
(define-const var2874 String (getLogicalColumnName/-952276084 (cast-from-var2873-to-var182 var2520))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String getLogicalColumnName()>() 
(assert true)
(define-const var846 String (append/672562846 var3994 var2874)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3994!1 String)
(assert (= var3994!1 (str.++ var3994 var2874)))
(assert true)
;(assert (append/-1166366385 var846 39)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var846!1 String)
(assert (str.prefixof var846 var846!1))
(assert true)
(define-const var2923 String (append/672562846 var709!3 ", referencedColumn=\u0027")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", referencedColumn=\'") 
(declare-const var709!4 String)
(assert (= var709!4 (str.++ var709!3 ", referencedColumn=\u0027")))
(define-const var2255 String (referencedColumn/1693074950 var2520)) ; Statement: $r5 = r1.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String referencedColumn> 
(assert true)
(define-const var1824 String (append/672562846 var2923 var2255)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2923!1 String)
(assert (= var2923!1 (str.++ var2923 var2255)))
(assert true)
;(assert (append/-1166366385 var1824 39)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var1824!1 String)
(assert (str.prefixof var1824 var1824!1))
(assert true)
(define-const var28 String (append/672562846 var709!4 ", mappedBy=\u0027")) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", mappedBy=\'") 
(declare-const var709!5 String)
(assert (= var709!5 (str.++ var709!4 ", mappedBy=\u0027")))
(define-const var663 String (mappedBy/1693074950 var2520)) ; Statement: $r8 = r1.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String mappedBy> 
(assert true)
(define-const var1460 String (append/672562846 var28 var663)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var28!1 String)
(assert (= var28!1 (str.++ var28 var663)))
(assert true)
;(assert (append/-1166366385 var1460 39)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var1460!1 String)
(assert (str.prefixof var1460 var1460!1))
(assert true)
;(assert (append/-1166366385 var709!5 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var709!6 String)
(assert (str.prefixof var709!5 var709!6))
(assert true)
(define-const var3313 String (toString/-2075883882 var709!6)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLogicalColumnName/-952276084=([org.hibernate.cfg.Ejb3Column], java.lang.String), cast-from-var2873-to-var182=([org.hibernate.cfg.Ejb3JoinColumn], org.hibernate.cfg.Ejb3Column), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), referencedColumn/1693074950=([org.hibernate.cfg.Ejb3JoinColumn], java.lang.String), mappedBy/1693074950=([org.hibernate.cfg.Ejb3JoinColumn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2873=org.hibernate.cfg.Ejb3JoinColumn, var2520=r1, var709=$r0, var3994=$r3, var182=org.hibernate.cfg.Ejb3Column, var2874=$r2, var846=$r4, var2923=$r6, var2255=$r5, var1824=$r7, var28=$r9, var663=$r8, var1460=$r10, var3313=$r11}
; {org.hibernate.cfg.Ejb3JoinColumn=var2873, r1=var2520, $r0=var709, $r3=var3994, org.hibernate.cfg.Ejb3Column=var182, $r2=var2874, $r4=var846, $r6=var2923, $r5=var2255, $r7=var1824, $r9=var28, $r8=var663, $r10=var1460, $r11=var3313}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.Ejb3JoinColumn;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ejb3JoinColumn");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{logicalColumnName=\'");	$r2 = virtualinvoke r1.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String getLogicalColumnName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", referencedColumn=\'");	$r5 = r1.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String referencedColumn>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", mappedBy=\'");	$r8 = r1.<org.hibernate.cfg.Ejb3JoinColumn: java.lang.String mappedBy>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1