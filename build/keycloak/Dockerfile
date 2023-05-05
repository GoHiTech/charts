# charts/build/keycloak/Dockerfile
# https://www.keycloak.org/server/containers
# docker run -it --rm quay.io/keycloak/keycloak:21.1.1 build --help-all
#
FROM quay.io/keycloak/keycloak:21.1.1 as builder
ENV KC_CACHE=ispn \
    KC_CACHE_STACK=kubernetes \
    KC_DB=postgres \
    KC_VAULT=file \
    KC_FIPS_MOE=strict
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:21.1.1
COPY --from=builder /opt/keycloak/ /opt/keycloak/
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
