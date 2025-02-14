/**
 * DtRepartidor.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public class DtRepartidor  extends publicadores.DtUsuario  implements java.io.Serializable {
    private java.lang.String numeroDeLicencia;

    public DtRepartidor() {
    }

    public DtRepartidor(
           java.lang.String nombre,
           java.lang.String email,
           java.lang.String pw,
           java.lang.String numeroDeLicencia) {
        super(
            nombre,
            email,
            pw);
        this.numeroDeLicencia = numeroDeLicencia;
    }


    /**
     * Gets the numeroDeLicencia value for this DtRepartidor.
     * 
     * @return numeroDeLicencia
     */
    public java.lang.String getNumeroDeLicencia() {
        return numeroDeLicencia;
    }


    /**
     * Sets the numeroDeLicencia value for this DtRepartidor.
     * 
     * @param numeroDeLicencia
     */
    public void setNumeroDeLicencia(java.lang.String numeroDeLicencia) {
        this.numeroDeLicencia = numeroDeLicencia;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtRepartidor)) return false;
        DtRepartidor other = (DtRepartidor) obj;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = super.equals(obj) && 
            ((this.numeroDeLicencia==null && other.getNumeroDeLicencia()==null) || 
             (this.numeroDeLicencia!=null &&
              this.numeroDeLicencia.equals(other.getNumeroDeLicencia())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = super.hashCode();
        if (getNumeroDeLicencia() != null) {
            _hashCode += getNumeroDeLicencia().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtRepartidor.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtRepartidor"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("numeroDeLicencia");
        elemField.setXmlName(new javax.xml.namespace.QName("", "numeroDeLicencia"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
