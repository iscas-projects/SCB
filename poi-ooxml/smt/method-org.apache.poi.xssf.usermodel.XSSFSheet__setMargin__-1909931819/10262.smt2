(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var711 0)
(declare-sort var482 0)
(declare-sort var3164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var482_getByShortValue/85620303 (Int) var482)
(declare-fun var3164-init () var3164)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3164 String) void)
(declare-const null-var711 var711)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var482 var482)
(declare-const var2721 var711) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2721 null-var711)))
(declare-const var1068 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var1068 null-Int)))
(declare-const var182 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var182 null-Float64)))
(define-const var2489 var482 (var482_getByShortValue/85620303 var1068)) ; Statement: r0 = staticinvoke <org.apache.poi.ss.usermodel.PageMargin: org.apache.poi.ss.usermodel.PageMargin getByShortValue(short)>(s0) 
 ; Statement: if r0 != null goto virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: void setMargin(org.apache.poi.ss.usermodel.PageMargin,double)>(r0, d0) 
(assert (not (not (= var2489 null-var482)))) ; Negate: Cond: r0 != null  
(define-const var1112 var3164 var3164-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1421 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1421)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1421!1 String)
(assert (= var1421!1 ""))
(assert true)
(define-const var951 String (append/672562846 var1421!1 "Unknown margin constant:  ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown margin constant:  ") 
(declare-const var1421!2 String)
(assert (= var1421!2 (str.++ var1421!1 "Unknown margin constant:  ")))
(define-const var128 Int (cast-from-Int-to-Int var1068)) ; Statement: $i1 = (int) s0 
(assert true)
(define-const var781 String (append/-1001720160 var951 var128)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var951!1 String)
(assert (str.prefixof var951 var951!1))
(assert true)
(define-const var3475 String (toString/-2075883882 var781)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1112 var3475)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1112!1 var3164)
(declare-const var3475!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var482_getByShortValue/85620303=([short], org.apache.poi.ss.usermodel.PageMargin), var3164-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([short], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var711=org.apache.poi.xssf.usermodel.XSSFSheet, var2721=r1, var1068=s0, var182=d0, var482=org.apache.poi.ss.usermodel.PageMargin, var2489=r0, var3164=java.lang.IllegalArgumentException, var1112=$r8, var1421=$r7, var951=$r4, var128=$i1, var781=$r5, var3475=$r6}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var711, r1=var2721, s0=var1068, d0=var182, org.apache.poi.ss.usermodel.PageMargin=var482, r0=var2489, java.lang.IllegalArgumentException=var3164, $r8=var1112, $r7=var1421, $r4=var951, $i1=var128, $r5=var781, $r6=var3475}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	s0 := @parameter0: short;	d0 := @parameter1: double;	r0 = staticinvoke <org.apache.poi.ss.usermodel.PageMargin: org.apache.poi.ss.usermodel.PageMargin getByShortValue(short)>(s0);	if r0 != null goto virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: void setMargin(org.apache.poi.ss.usermodel.PageMargin,double)>(r0, d0);	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown margin constant:  ");	$i1 = (int) s0;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2