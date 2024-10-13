(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var612 0)
(declare-sort var1612 0)
(declare-sort var1194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstCell/1646459898 (var612) var1194)
(declare-fun getCellRefParts/105673054 (var1194) (Array Int String))
(declare-fun getLastCell/226227030 (var612) var1194)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1612_setRef/-1067408360 (var1612 String) void)
(declare-const null-var612 var612)
(declare-const null-var1612 var1612)
(declare-const var99 var612) ; Statement: r0 := @parameter0: org.apache.poi.ss.util.AreaReference 
(assert (not (= var99 null-var612)))
(declare-const var1196 var1612) ; Statement: r16 := @parameter1: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource 
(assert (not (= var1196 null-var1612)))
(assert true)
(define-const var3995 var1194 (getFirstCell/1646459898 var99)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>() 
(assert true)
(define-const var1032 (Array Int String) (getCellRefParts/105673054 var3995)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1132 String (select var1032 1)) ; Statement: r3 = r2[1] 
(define-const var3405 String (select var1032 2)) ; Statement: r4 = r2[2] 
(assert true)
(define-const var3355 var1194 (getLastCell/226227030 var99)) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getLastCell()>() 
(assert true)
(define-const var3750 (Array Int String) (getCellRefParts/105673054 var3355)) ; Statement: r6 = virtualinvoke $r5.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2924 String (select var3750 1)) ; Statement: r7 = r6[1] 
(define-const var3184 String (select var3750 2)) ; Statement: r8 = r6[2] 
(define-const var3894 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3894)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3894!1 String)
(assert (= var3894!1 ""))
(assert true)
(define-const var2244 String (append/672562846 var3894!1 var3405)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3894!2 String)
(assert (= var3894!2 (str.++ var3894!1 var3405)))
(assert true)
(define-const var70 String (append/672562846 var2244 var1132)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2244!1 String)
(assert (= var2244!1 (str.++ var2244 var1132)))
(assert true)
(define-const var670 String (append/-1166366385 var70 58)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var70!1 String)
(assert (str.prefixof var70 var70!1))
(assert true)
(define-const var387 String (append/672562846 var670 var3184)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var670!1 String)
(assert (= var670!1 (str.++ var670 var3184)))
(assert true)
(define-const var2893 String (append/672562846 var387 var2924)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var387!1 String)
(assert (= var387!1 (str.++ var387 var2924)))
(assert true)
(define-const var2446 String (toString/-2075883882 var2893)) ; Statement: r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1612_setRef/-1067408360 var1196 var2446)) ; Statement: interfaceinvoke r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource: void setRef(java.lang.String)>(r15) 

(declare-const var1196!1 var1612)
(declare-const var2446!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstCell/1646459898=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), getLastCell/226227030=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1612_setRef/-1067408360=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource, java.lang.String], void)}
; {var612=org.apache.poi.ss.util.AreaReference, var99=r0, var1612=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource, var1196=r16, var1194=org.apache.poi.ss.util.CellReference, var3995=$r1, var1032=r2, var1132=r3, var3405=r4, var3355=$r5, var3750=r6, var2924=r7, var3184=r8, var3894=$r9, var2244=$r10, var70=$r11, var670=$r12, var387=$r13, var2893=$r14, var2446=r15}
; {org.apache.poi.ss.util.AreaReference=var612, r0=var99, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource=var1612, r16=var1196, org.apache.poi.ss.util.CellReference=var1194, $r1=var3995, r2=var1032, r3=var1132, r4=var3405, $r5=var3355, r6=var3750, r7=var2924, r8=var3184, $r9=var3894, $r10=var2244, $r11=var70, $r12=var670, $r13=var387, $r14=var2893, r15=var2446}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.poi.ss.util.AreaReference;	r16 := @parameter1: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource;	$r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>();	r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	r3 = r2[1];	r4 = r2[2];	$r5 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getLastCell()>();	r6 = virtualinvoke $r5.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	r7 = r6[1];	r8 = r6[2];	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource: void setRef(java.lang.String)>(r15);	return
;block_num 1