(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1359 0)
(declare-sort var486 0)
(declare-sort var3338 0)
(declare-sort var738 0)
(declare-sort var942 0)
(declare-sort var2237 0)
(declare-sort var2994 0)
(declare-sort var200 0)
(declare-sort var3966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2237-init () var2237)
(declare-fun <init>/-992352197 (var2237) void)
(declare-fun var200-init () var200)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLineNumber/972143959 (var2237) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getColumnNumber/-276478347 (var2237) Int)
(declare-fun getMessage/-980496499 (var2237) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1227528494 (var200 String var3966 var942) void)
(declare-fun cast-from-var2994-to-var3966 (var2994) var3966)
(declare-fun cast-from-var200-to-var3966 (var200) var3966)
(declare-const null-var1359 var1359)
(declare-const null-var486 var486)
(declare-const null-var3338 var3338)
(declare-const null-var738 var738)
(declare-const null-var942 var942)
(declare-const null-var2994 var2994)
(declare-const var3549 var1359) ; Statement: r2 := @this: org.hibernate.boot.jaxb.internal.AbstractBinder 
(assert (not (= var3549 null-var1359)))
(declare-const var628 var486) ; Statement: r3 := @parameter0: javax.xml.stream.XMLEventReader 
(assert (not (= var628 null-var486)))
(declare-const var2281 var3338) ; Statement: r5 := @parameter1: javax.xml.validation.Schema 
(assert (not (= var2281 null-var3338)))
(declare-const var944 var738) ; Statement: r1 := @parameter2: javax.xml.bind.JAXBContext 
(assert (not (= var944 null-var738)))
(declare-const var1442 var942) ; Statement: r16 := @parameter3: org.hibernate.boot.jaxb.Origin 
(assert (not (= var1442 null-var942)))
(define-const var3714 var2237 var2237-init) ; Statement: $r19 = new org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler 
(assert true)
;(assert (<init>/-992352197 var3714)) ; Statement: specialinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: void <init>()>() 

(declare-const var3714!1 var2237)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2497 var2994) ; Statement: $r6 := @caughtexception 
(assert (not (= var2497 null-var2994)))
(define-const var3337 var200 var200-init) ; Statement: $r21 = new org.hibernate.boot.MappingException 
(define-const var438 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var438)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var438!1 String)
(assert (= var438!1 ""))
(assert true)
(define-const var1060 String (append/672562846 var438!1 "Unable to perform unmarshalling at line number ")) ; Statement: $r9 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform unmarshalling at line number ") 
(declare-const var438!2 String)
(assert (= var438!2 (str.++ var438!1 "Unable to perform unmarshalling at line number ")))
(assert true)
(define-const var3183 Int (getLineNumber/972143959 var3714!1)) ; Statement: $i0 = virtualinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: int getLineNumber()>() 
(assert true)
(define-const var3285 String (append/-1001720160 var1060 var3183)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1060!1 String)
(assert (str.prefixof var1060 var1060!1))
(assert true)
(define-const var2225 String (append/672562846 var3285 " and column ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and column ") 
(declare-const var3285!1 String)
(assert (= var3285!1 (str.++ var3285 " and column ")))
(assert true)
(define-const var3374 Int (getColumnNumber/-276478347 var3714!1)) ; Statement: $i1 = virtualinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: int getColumnNumber()>() 
(assert true)
(define-const var3290 String (append/-1001720160 var2225 var3374)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2225!1 String)
(assert (str.prefixof var2225 var2225!1))
(assert true)
(define-const var1871 String (append/672562846 var3290 ". Message: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Message: ") 
(declare-const var3290!1 String)
(assert (= var3290!1 (str.++ var3290 ". Message: ")))
(assert true)
(define-const var1682 String (getMessage/-980496499 var3714!1)) ; Statement: $r13 = virtualinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: java.lang.String getMessage()>() 
(assert true)
(define-const var3812 String (append/672562846 var1871 var1682)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1871!1 String)
(assert (= var1871!1 (str.++ var1871 var1682)))
(assert true)
(define-const var1592 String (toString/-2075883882 var3812)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1227528494 var3337 var1592 (cast-from-var2994-to-var3966 var2497) var1442)) ; Statement: specialinvoke $r21.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r17, $r6, r16) 

(declare-const var3337!1 var200)
(declare-const var1592!1 String)
(declare-const var2497!1 var2994)
(declare-const var1442!1 var942)
(define-const var3673 var3966 (cast-from-var200-to-var3966 var3337!1)) ; Statement: $r22 = (java.lang.Throwable) $r21 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var2237-init=([], org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler), <init>/-992352197=([org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler], void), var200-init=([], org.hibernate.boot.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLineNumber/972143959=([org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getColumnNumber/-276478347=([org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler], int), getMessage/-980496499=([org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1227528494=([org.hibernate.boot.MappingException, java.lang.String, java.lang.Throwable, org.hibernate.boot.jaxb.Origin], void), cast-from-var2994-to-var3966=([javax.xml.bind.JAXBException], java.lang.Throwable), cast-from-var200-to-var3966=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var1359=org.hibernate.boot.jaxb.internal.AbstractBinder, var3549=r2, var486=javax.xml.stream.XMLEventReader, var628=r3, var3338=javax.xml.validation.Schema, var2281=r5, var738=javax.xml.bind.JAXBContext, var944=r1, var942=org.hibernate.boot.jaxb.Origin, var1442=r16, var2237=org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler, var3714=$r19, var2994=javax.xml.bind.JAXBException, var2497=$r6, var200=org.hibernate.boot.MappingException, var3337=$r21, var438=$r20, var1060=$r9, var3183=$i0, var3285=$r10, var2225=$r11, var3374=$i1, var3290=$r12, var1871=$r14, var1682=$r13, var3812=$r15, var1592=$r17, var3966=java.lang.Throwable, var3673=$r22}
; {org.hibernate.boot.jaxb.internal.AbstractBinder=var1359, r2=var3549, javax.xml.stream.XMLEventReader=var486, r3=var628, javax.xml.validation.Schema=var3338, r5=var2281, javax.xml.bind.JAXBContext=var738, r1=var944, org.hibernate.boot.jaxb.Origin=var942, r16=var1442, org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler=var2237, $r19=var3714, javax.xml.bind.JAXBException=var2994, $r6=var2497, org.hibernate.boot.MappingException=var200, $r21=var3337, $r20=var438, $r9=var1060, $i0=var3183, $r10=var3285, $r11=var2225, $i1=var3374, $r12=var3290, $r14=var1871, $r13=var1682, $r15=var3812, $r17=var1592, java.lang.Throwable=var3966, $r22=var3673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.boot.jaxb.internal.AbstractBinder;	r3 := @parameter0: javax.xml.stream.XMLEventReader;	r5 := @parameter1: javax.xml.validation.Schema;	r1 := @parameter2: javax.xml.bind.JAXBContext;	r16 := @parameter3: org.hibernate.boot.jaxb.Origin;	$r19 = new org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler;	specialinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: void <init>()>();	$r6 := @caughtexception;	$r21 = new org.hibernate.boot.MappingException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform unmarshalling at line number ");	$i0 = virtualinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: int getLineNumber()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and column ");	$i1 = virtualinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: int getColumnNumber()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Message: ");	$r13 = virtualinvoke $r19.<org.hibernate.boot.jaxb.internal.ContextProvidingValidationEventHandler: java.lang.String getMessage()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r17, $r6, r16);	$r22 = (java.lang.Throwable) $r21;	throw $r22
;block_num 2