(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var484 0)
(declare-sort var114 0)
(declare-sort var3489 0)
(declare-sort var3270 0)
(declare-sort var2187 0)
(declare-sort var781 0)
(declare-sort var1776 0)
(declare-sort var3527 0)
(declare-sort var1835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1776_isEmptyOrNullAnnotationValue/1248857451 (String) Bool)
(declare-fun var3527-init () var3527)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1776_getRelativePath/1836051203 (var2187 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3527 String) void)
(declare-fun cast-from-var3527-to-var1835 (var3527) var1835)
(declare-const null-var484 var484)
(declare-const null-var114 var114)
(declare-const null-String String)
(declare-const null-var3270 var3270)
(declare-const null-var2187 var2187)
(declare-const null-var781 var781)
(declare-const var3687 var484) ; Statement: r0 := @parameter0: javax.persistence.JoinColumn 
(assert (not (= var3687 null-var484)))
(declare-const var2135 var114) ; Statement: r14 := @parameter1: org.hibernate.annotations.Comment 
(assert (not (= var2135 null-var114)))
(declare-const var268 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var268 null-String)))
(declare-const var570 var3270) ; Statement: r3 := @parameter3: java.util.Map 
(assert (not (= var570 null-var3270)))
(declare-const var3271 var2187) ; Statement: r4 := @parameter4: org.hibernate.cfg.PropertyHolder 
(assert (not (= var3271 null-var2187)))
(declare-const var456 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var456 null-String)))
(declare-const var1511 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var1511 null-String)))
(declare-const var2060 var781) ; Statement: r8 := @parameter7: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var2060 null-var781)))
 ; Statement: if r0 == null goto $r32 = new org.hibernate.cfg.Ejb3JoinColumn 
(assert (not (= var3687 null-var484))) ; Negate: Cond: r0 == null  
(define-const var1826 Bool (var1776_isEmptyOrNullAnnotationValue/1248857451 var268)) ; Statement: $z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyOrNullAnnotationValue(java.lang.String)>(r2) 
 ; Statement: if $z1 != 0 goto $r30 = new org.hibernate.cfg.Ejb3JoinColumn 
(assert (not (not (= (ite var1826 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2880 var3527 var3527-init) ; Statement: $r29 = new org.hibernate.AnnotationException 
(define-const var1110 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1110)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1110!1 String)
(assert (= var1110!1 ""))
(assert true)
(define-const var2139 String (append/672562846 var1110!1 "Illegal attempt to define a @JoinColumn with a mappedBy association: ")) ; Statement: $r23 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal attempt to define a @JoinColumn with a mappedBy association: ") 
(declare-const var1110!2 String)
(assert (= var1110!2 (str.++ var1110!1 "Illegal attempt to define a @JoinColumn with a mappedBy association: ")))
(define-const var214 String (var1776_getRelativePath/1836051203 var3271 var456)) ; Statement: $r22 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getRelativePath(org.hibernate.cfg.PropertyHolder,java.lang.String)>(r4, r5) 
(assert true)
(define-const var1402 String (append/672562846 var2139 var214)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2139!1 String)
(assert (= var2139!1 (str.++ var2139 var214)))
(assert true)
(define-const var1846 String (toString/-2075883882 var1402)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2880 var1846)) ; Statement: specialinvoke $r29.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r25) 

(declare-const var2880!1 var3527)
(declare-const var1846!1 String)
(define-const var2437 var1835 (cast-from-var3527-to-var1835 var2880!1)) ; Statement: $r34 = (java.lang.Throwable) $r29 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var1776_isEmptyOrNullAnnotationValue/1248857451=([java.lang.String], boolean), var3527-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1776_getRelativePath/1836051203=([org.hibernate.cfg.PropertyHolder, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3527-to-var1835=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var484=javax.persistence.JoinColumn, var3687=r0, var114=org.hibernate.annotations.Comment, var2135=r14, var268=r2, var3489=null_type, var3270=java.util.Map, var570=r3, var2187=org.hibernate.cfg.PropertyHolder, var3271=r4, var456=r5, var1511=r7, var781=org.hibernate.boot.spi.MetadataBuildingContext, var2060=r8, var1776=org.hibernate.cfg.BinderHelper, var1826=$z1, var3527=org.hibernate.AnnotationException, var2880=$r29, var1110=$r28, var2139=$r23, var214=$r22, var1402=$r24, var1846=$r25, var1835=java.lang.Throwable, var2437=$r34}
; {javax.persistence.JoinColumn=var484, r0=var3687, org.hibernate.annotations.Comment=var114, r14=var2135, r2=var268, null_type=var3489, java.util.Map=var3270, r3=var570, org.hibernate.cfg.PropertyHolder=var2187, r4=var3271, r5=var456, r7=var1511, org.hibernate.boot.spi.MetadataBuildingContext=var781, r8=var2060, org.hibernate.cfg.BinderHelper=var1776, $z1=var1826, org.hibernate.AnnotationException=var3527, $r29=var2880, $r28=var1110, $r23=var2139, $r22=var214, $r24=var1402, $r25=var1846, java.lang.Throwable=var1835, $r34=var2437}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: javax.persistence.JoinColumn;	r14 := @parameter1: org.hibernate.annotations.Comment;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.util.Map;	r4 := @parameter4: org.hibernate.cfg.PropertyHolder;	r5 := @parameter5: java.lang.String;	r7 := @parameter6: java.lang.String;	r8 := @parameter7: org.hibernate.boot.spi.MetadataBuildingContext;	if r0 == null goto $r32 = new org.hibernate.cfg.Ejb3JoinColumn;	$z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyOrNullAnnotationValue(java.lang.String)>(r2);	if $z1 != 0 goto $r30 = new org.hibernate.cfg.Ejb3JoinColumn;	$r29 = new org.hibernate.AnnotationException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal attempt to define a @JoinColumn with a mappedBy association: ");	$r22 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getRelativePath(org.hibernate.cfg.PropertyHolder,java.lang.String)>(r4, r5);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r25);	$r34 = (java.lang.Throwable) $r29;	throw $r34
;block_num 3