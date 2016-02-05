(ns blarg.core
  (:require ))

(enable-console-print!)

(println "Edits asdf to this here asdfasdf text but not the one I just hould up asdfasdfasf in your developer console.")

;; define your app data so that it doesn't get over-written on reload

(defonce app-state (atom {:text "Matt"}))


(defn on-js-reload []
  ;; optionally touch your app-state to force rerendering depending on
  ;; your application
  ;; (swap! app-state update-in [:__figwheel_counter] inc)
)
