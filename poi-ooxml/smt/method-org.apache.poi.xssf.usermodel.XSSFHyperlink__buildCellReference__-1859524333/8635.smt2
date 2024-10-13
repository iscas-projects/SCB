(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2444 0)
(declare-sort var849 0)
(declare-sort var755 0)
(declare-sort var2158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _ctHyperlink/-884130014 (var2444) var849)
(declare-fun var849_getRef/-697772747 (var849) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2158-init () var2158)
(declare-fun <init>/-1289332233 (var2158 String) void)
(declare-const null-var2444 var2444)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1046 var2444) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink 
(assert (not (= var1046 null-var2444)))
(declare-const var1700 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1700 null-Bool)))
(define-const var1760 var849 (_ctHyperlink/-884130014 var1046)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink _ctHyperlink> 
(define-const var404 String (var849_getRef/-697772747 var1760)) ; Statement: r5 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getRef()>() 
 ; Statement: if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean contains(java.lang.CharSequence)>(":") 
(assert (not (= var404 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var909 Bool (contains/1009244746 var404 (cast-from-String-to-String ":"))) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean contains(java.lang.CharSequence)>(":") 
 ; Statement: if $z0 == 0 goto $r2 = new org.apache.poi.ss.util.CellReference 
(assert (= (ite var909 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1638 var2158 var2158-init) ; Statement: $r2 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-1289332233 var1638 var404)) ; Statement: specialinvoke $r2.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>(r5) 

(declare-const var1638!1 var2158)
(declare-const var404!1 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {_ctHyperlink/-884130014=([org.apache.poi.xssf.usermodel.XSSFHyperlink], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink), var849_getRef/-697772747=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2158-init=([], org.apache.poi.ss.util.CellReference), <init>/-1289332233=([org.apache.poi.ss.util.CellReference, java.lang.String], void)}
; {var2444=org.apache.poi.xssf.usermodel.XSSFHyperlink, var1046=r0, var1700=z1, var849=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink, var1760=$r1, var404=r5, var755=null_type, var909=$z0, var2158=org.apache.poi.ss.util.CellReference, var1638=$r2}
; {org.apache.poi.xssf.usermodel.XSSFHyperlink=var2444, r0=var1046, z1=var1700, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink=var849, $r1=var1760, r5=var404, null_type=var755, $z0=var909, org.apache.poi.ss.util.CellReference=var2158, $r2=var1638}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink;	z1 := @parameter0: boolean;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink _ctHyperlink>;	r5 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getRef()>();	if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean contains(java.lang.CharSequence)>(":");	$z0 = virtualinvoke r5.<java.lang.String: boolean contains(java.lang.CharSequence)>(":");	if $z0 == 0 goto $r2 = new org.apache.poi.ss.util.CellReference;	$r2 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r2.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>(r5);	return $r2
;block_num 3