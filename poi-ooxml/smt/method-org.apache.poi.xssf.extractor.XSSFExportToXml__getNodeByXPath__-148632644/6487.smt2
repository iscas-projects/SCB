(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var783 0)
(declare-sort var942 0)
(declare-sort var1669 0)
(declare-sort var1871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var783 var783)
(declare-const null-String String)
(declare-const null-var1669 var1669)
(declare-const null-var1871 var1871)
(declare-const null-Bool Bool)
(declare-const var3152 var783) ; Statement: r3 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml 
(assert (not (= var3152 null-var783)))
(declare-const var480 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var480 null-String)))
(declare-const var2038 var1669) ; Statement: r2 := @parameter1: org.w3c.dom.Node 
(assert (not (= var2038 null-var1669)))
(declare-const var2836 var1871) ; Statement: r6 := @parameter2: org.w3c.dom.Document 
(assert (not (= var2836 null-var1871)))
(declare-const var3063 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3063 null-Bool)))
(assert true)
(define-const var1972 (Array Int String) (split/-636890950 var480 "/")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var480 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var342 var1669 var2038) ; Statement: r8 = r2 
(define-const var719 Int 2) ; Statement: i3 = 2 
(assert true) ; Non Conditional
(define-const var1005 Int (getLength-Arr-String-1 var1972)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto return r8 
(assert (>= var719 var1005)) ; Cond: i3 >= $i0 
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var783=org.apache.poi.xssf.extractor.XSSFExportToXml, var3152=r3, var480=r0, var942=null_type, var1669=org.w3c.dom.Node, var2038=r2, var1871=org.w3c.dom.Document, var2836=r6, var3063=z1, var1972=r1, var342=r8, var719=i3, var1005=$i0}
; {org.apache.poi.xssf.extractor.XSSFExportToXml=var783, r3=var3152, r0=var480, null_type=var942, org.w3c.dom.Node=var1669, r2=var2038, org.w3c.dom.Document=var1871, r6=var2836, z1=var3063, r1=var1972, r8=var342, i3=var719, $i0=var1005}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.w3c.dom.Node;	r6 := @parameter2: org.w3c.dom.Document;	z1 := @parameter3: boolean;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	r8 = r2;	i3 = 2;	$i0 = lengthof r1;	if i3 >= $i0 goto return r8;	return r8
;block_num 3