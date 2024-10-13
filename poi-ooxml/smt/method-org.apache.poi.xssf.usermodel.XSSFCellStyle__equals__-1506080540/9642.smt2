(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var78 0)
(declare-sort var679 0)
(declare-sort var1084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var679-to-var78 (var679) var78)
(declare-fun _cellXf/-16279509 (var78) var1084)
(declare-fun toString/-522406933 (var679) String)
(declare-fun cast-from-var1084-to-var679 (var1084) var679)
(declare-fun getCoreXf/720100567 (var78) var1084)
(declare-const null-var78 var78)
(declare-const null-var679 var679)
(declare-const var676 var78) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFCellStyle 
(assert (not (= var676 null-var78)))
(declare-const var2879 var679) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2879 null-var679)))
(define-const var3223 Bool false) ; Statement: $z0 = r0 instanceof org.apache.poi.xssf.usermodel.XSSFCellStyle 
 ; Statement: if $z0 != 0 goto r1 = (org.apache.poi.xssf.usermodel.XSSFCellStyle) r0 
(assert (not (= (ite var3223 1 0) 0))) ; Cond: $z0 != 0 
(define-const var779 var78 (cast-from-var679-to-var78 var2879)) ; Statement: r1 = (org.apache.poi.xssf.usermodel.XSSFCellStyle) r0 
(define-const var3946 var1084 (_cellXf/-16279509 var676)) ; Statement: $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf _cellXf> 
(assert true)
(define-const var3344 String (toString/-522406933 (cast-from-var1084-to-var679 var3946))) ; Statement: $r6 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2897 var1084 (getCoreXf/720100567 var779)) ; Statement: $r4 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf getCoreXf()>() 
(assert true)
(define-const var1229 String (toString/-522406933 (cast-from-var1084-to-var679 var2897))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2024 Bool (= var3344 var1229)) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var679-to-var78=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFCellStyle), _cellXf/-16279509=([org.apache.poi.xssf.usermodel.XSSFCellStyle], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1084-to-var679=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf], java.lang.Object), getCoreXf/720100567=([org.apache.poi.xssf.usermodel.XSSFCellStyle], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf)}
; {var78=org.apache.poi.xssf.usermodel.XSSFCellStyle, var676=r2, var679=java.lang.Object, var2879=r0, var3223=$z0, var779=r1, var1084=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, var3946=$r3, var3344=$r6, var2897=$r4, var1229=$r5, var2024=$z1}
; {org.apache.poi.xssf.usermodel.XSSFCellStyle=var78, r2=var676, java.lang.Object=var679, r0=var2879, $z0=var3223, r1=var779, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf=var1084, $r3=var3946, $r6=var3344, $r4=var2897, $r5=var1229, $z1=var2024}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFCellStyle;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof org.apache.poi.xssf.usermodel.XSSFCellStyle;	if $z0 != 0 goto r1 = (org.apache.poi.xssf.usermodel.XSSFCellStyle) r0;	r1 = (org.apache.poi.xssf.usermodel.XSSFCellStyle) r0;	$r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf _cellXf>;	$r6 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf getCoreXf()>();	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	return $z1
;block_num 2